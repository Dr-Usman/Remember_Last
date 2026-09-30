import 'package:flutter/material.dart';

import '../../features/activities/domain/entities/activity.dart';
import '../theme/app_colors.dart';
import '../utils/activity_status.dart';
import '../utils/date_formatter.dart';
import '../../l10n/app_localizations.dart';
import 'category_chip.dart';
import 'status_indicator.dart';

/// Card displaying an activity summary on the home screen.
class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.item,
    required this.status,
    required this.onTap,
    required this.onQuickLog,
    this.elapsedNow,
    this.categoryColor,
    this.categoryIcon,
  });

  final ActivityWithLastDone item;
  final ActivityStatus status;
  final VoidCallback onTap;
  final VoidCallback onQuickLog;
  final DateTime? elapsedNow;
  final Color? categoryColor;
  final IconData? categoryIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final localeName = Localizations.localeOf(context).toString();
    final scheme = theme.colorScheme;
    final activity = item.activity;
    final lastDone = item.lastDoneAt;
    final accent = statusColor(status);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: scheme.surfaceContainerLow,
            border: Border.all(color: accent.withValues(alpha: 0.18), width: 1),
            boxShadow: [
              BoxShadow(
                color: scheme.shadow.withValues(alpha: 0.06),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ColoredBox(color: accent, child: const SizedBox(width: 4)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14, 14, 12, 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  activity.title,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.2,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(width: 8),
                              _QuickLogButton(onPressed: onQuickLog),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8,
                            runSpacing: 6,
                            children: [
                              if (activity.category != null &&
                                  activity.category!.isNotEmpty)
                                CategoryChip(
                                  label: activity.category!,
                                  color: categoryColor,
                                  icon: categoryIcon,
                                ),
                              StatusIndicator(status: status),
                            ],
                          ),
                          const SizedBox(height: 10),
                          if (lastDone != null)
                            Text(
                              DateFormatter.formatElapsed(
                                lastDone,
                                l10n,
                                now: elapsedNow,
                              ),
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: accent,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            )
                          else
                            Text(
                              l10n.statusNeverLogged,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: AppColors.neutral,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          if (lastDone != null) ...[
                            const SizedBox(height: 2),
                            Text(
                              DateFormatter.formatAbsoluteDateTime(
                                lastDone,
                                localeName,
                              ),
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: scheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _QuickLogButton extends StatelessWidget {
  const _QuickLogButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Material(
      color: scheme.primaryContainer,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: 40,
          height: 40,
          child: Icon(
            Icons.add_rounded,
            color: scheme.onPrimaryContainer,
            size: 24,
          ),
        ),
      ),
    );
  }
}
