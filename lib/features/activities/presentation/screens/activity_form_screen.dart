import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/database/database_provider.dart';
import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../../../categories/presentation/providers/categories_providers.dart';
import '../../domain/entities/activity.dart';
import '../../domain/enums/reminder_type.dart';
import '../../../../core/utils/l10n_labels.dart';
import '../../../../l10n/app_localizations.dart';

class ActivityFormScreen extends ConsumerStatefulWidget {
  const ActivityFormScreen({super.key, this.activityId});

  final int? activityId;

  bool get isEditing => activityId != null;

  @override
  ConsumerState<ActivityFormScreen> createState() => _ActivityFormScreenState();
}

class _ActivityFormScreenState extends ConsumerState<ActivityFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _categoryController = TextEditingController();
  final _notesController = TextEditingController();
  final _reminderDaysController = TextEditingController();

  ReminderType _reminderType = ReminderType.none;
  bool _reminderEnabled = false;
  bool _loading = true;
  bool _saving = false;
  Activity? _existing;

  @override
  void initState() {
    super.initState();
    if (widget.isEditing) {
      _loadActivity();
    } else {
      _loading = false;
    }
  }

  Future<void> _loadActivity() async {
    final activity = await ref
        .read(activityRepositoryProvider)
        .getById(widget.activityId!);
    if (activity != null && mounted) {
      _existing = activity;
      _titleController.text = activity.title;
      _categoryController.text = activity.category ?? '';
      _notesController.text = activity.notes ?? '';
      _reminderEnabled =
          activity.reminderDays != null && activity.reminderDays! > 0;
      _reminderType = activity.reminderType;
      // Enabled + none is invalid; treat as custom so their day count is kept.
      if (_reminderEnabled && _reminderType == ReminderType.none) {
        _reminderType = ReminderType.custom;
      }
      if (_reminderEnabled) {
        _reminderDaysController.text =
            '${_reminderType.defaultDays ?? activity.reminderDays}';
      }
    }
    if (mounted) setState(() => _loading = false);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _categoryController.dispose();
    _notesController.dispose();
    _reminderDaysController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final categoriesAsync = ref.watch(mergedCategoriesProvider);
    final categoryOptions = categoriesAsync.valueOrNull ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isEditing ? l10n.editActivity : l10n.newActivity),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: l10n.titleLabel,
                      hintText: l10n.titleHint,
                    ),
                    textCapitalization: TextCapitalization.sentences,
                    onTapOutside: (_) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                    validator: (v) => v == null || v.trim().isEmpty
                        ? l10n.titleRequired
                        : null,
                  ),
                  const SizedBox(height: 16),
                  Autocomplete<String>(
                    // Remount when categories change — Autocomplete only refreshes
                    // options when field text changes, so new categories would stay hidden.
                    key: ValueKey(categoryOptions.join('\u0001')),
                    optionsBuilder: (textEditingValue) {
                      if (textEditingValue.text.isEmpty) {
                        return categoryOptions;
                      }
                      return categoryOptions.where(
                        (c) => c.toLowerCase().contains(
                          textEditingValue.text.toLowerCase(),
                        ),
                      );
                    },
                    onSelected: (value) => _categoryController.text = value,
                    fieldViewBuilder:
                        (context, controller, focusNode, onSubmitted) {
                          if (_categoryController.text.isNotEmpty &&
                              controller.text != _categoryController.text) {
                            controller.text = _categoryController.text;
                          }
                          return TextFormField(
                            controller: controller,
                            focusNode: focusNode,
                            decoration: InputDecoration(
                              labelText: l10n.categoryLabel,
                              hintText: l10n.categoryHint,
                              suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.settings_outlined,
                                  size: 20,
                                ),
                                tooltip: l10n.manageCategories,
                                onPressed: () =>
                                    context.push(AppRoutes.categories),
                              ),
                            ),
                            onTapOutside: (_) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            onChanged: (v) => _categoryController.text = v,
                          );
                        },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _notesController,
                    decoration: InputDecoration(
                      labelText: l10n.notes,
                      alignLabelWithHint: true,
                    ),
                    maxLines: 3,
                    textCapitalization: TextCapitalization.sentences,
                    onTapOutside: (_) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    l10n.dueInterval,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(l10n.markDueEveryXDays),
                    subtitle: Text(l10n.dueIntervalSubtitle),
                    value: _reminderEnabled,
                    onChanged: (v) {
                      setState(() {
                        _reminderEnabled = v;
                        if (!v) return;
                        // Switch is on/off; preset should never stay on "None".
                        if (_reminderType == ReminderType.none) {
                          _reminderType = ReminderType.weekly;
                        }
                        _syncReminderDaysFromType();
                      });
                    },
                  ),
                  if (_reminderEnabled) ...[
                    const SizedBox(height: 4),
                    DropdownButtonFormField<ReminderType>(
                      initialValue: _reminderType,
                      decoration: InputDecoration(
                        labelText: l10n.frequencyPreset,
                      ),
                      items: ReminderType.selectable
                          .map(
                            (t) => DropdownMenuItem(
                              value: t,
                              child: Text(t.l10nLabel(l10n)),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        if (value == null) return;
                        setState(() {
                          _reminderType = value;
                          _syncReminderDaysFromType();
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _reminderDaysController,
                      enabled: _reminderType == ReminderType.custom,
                      decoration: InputDecoration(
                        labelText: l10n.daysUntilDue,
                        suffixText: l10n.daysSuffix,
                        helperText: _reminderType == ReminderType.custom
                            ? null
                            : l10n.fixedByPreset(
                                _reminderType.l10nLabel(l10n).toLowerCase(),
                              ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onTapOutside: (_) =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      validator: (v) {
                        if (!_reminderEnabled) return null;
                        if (_reminderType.hasFixedDays) return null;
                        final days = int.tryParse(v ?? '');
                        if (days == null || days <= 0) {
                          return l10n.invalidDays;
                        }
                        return null;
                      },
                    ),
                  ],
                ],
              ),
            ),
      bottomNavigationBar: _loading
          ? null
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: FilledButton(
                  onPressed: _saving ? null : _save,
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(52),
                  ),
                  child: _saving
                      ? const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(
                          widget.isEditing
                              ? l10n.saveChanges
                              : l10n.createActivity,
                        ),
                ),
              ),
            ),
    );
  }

  void _syncReminderDaysFromType() {
    final days = _reminderType.defaultDays;
    if (days != null) {
      _reminderDaysController.text = '$days';
    } else if (_reminderDaysController.text.isEmpty) {
      _reminderDaysController.text = '7';
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _saving = true);

    final repo = ref.read(activityRepositoryProvider);
    final now = DateTime.now();
    final category = _categoryController.text.trim();
    final reminderType = _reminderEnabled ? _reminderType : ReminderType.none;
    final reminderDays = _reminderEnabled
        ? (reminderType.defaultDays ??
              int.parse(_reminderDaysController.text.trim()))
        : null;

    if (widget.isEditing && _existing != null) {
      await repo.update(
        _existing!.copyWith(
          title: _titleController.text.trim(),
          category: category.isEmpty ? null : category,
          notes: _notesController.text.trim().isEmpty
              ? null
              : _notesController.text.trim(),
          reminderDays: reminderDays,
          clearReminderDays: reminderDays == null,
          reminderType: reminderType,
          updatedAt: now,
        ),
      );
      ref
          .read(analyticsServiceProvider)
          .trackActivityEdited(
            editedInterval:
                _existing!.reminderDays != reminderDays ||
                _existing!.reminderType != reminderType,
            editedCategory:
                _existing!.category != (category.isEmpty ? null : category),
          );
    } else {
      await repo.insert(
        Activity(
          id: 0,
          uuid: const Uuid().v4(),
          title: _titleController.text.trim(),
          category: category.isEmpty ? null : category,
          notes: _notesController.text.trim().isEmpty
              ? null
              : _notesController.text.trim(),
          reminderDays: reminderDays,
          reminderType: reminderType,
          createdAt: now,
          updatedAt: now,
        ),
      );
      final allActivities = await repo.getAll();
      ref
          .read(analyticsServiceProvider)
          .trackActivityCreated(
            hasTargetInterval: reminderDays != null,
            intervalDays: reminderDays,
            hasCategory: category.isNotEmpty,
            totalActivitiesCount: allActivities.length,
          );
    }

    if (mounted) context.pop();
  }
}
