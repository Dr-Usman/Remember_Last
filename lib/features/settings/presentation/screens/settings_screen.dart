import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../bootstrap/demo_seeder.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/providers/package_info_provider.dart';
import '../../../../core/providers/theme_mode_provider.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../backup/presentation/backup_actions.dart';
import '../settings_actions.dart';
import '../widgets/language_picker_tile.dart';
import '../widgets/settings_tile.dart';

/// Main settings hub for backup, categories, and app info.
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  bool? _analyticsEnabled;
  bool _loadingAnalytics = true;

  @override
  void initState() {
    super.initState();
    _loadAnalyticsConsent();
  }

  Future<void> _loadAnalyticsConsent() async {
    final consent = await ref.read(analyticsServiceProvider).getConsentStatus();
    if (!mounted) return;
    setState(() {
      _analyticsEnabled = consent ?? false;
      _loadingAnalytics = false;
    });
  }

  Future<void> _setAnalyticsEnabled(bool enabled) async {
    setState(() => _analyticsEnabled = enabled);

    final analytics = ref.read(analyticsServiceProvider);
    if (enabled) {
      final info = await ref.read(packageInfoProvider.future);
      await analytics.optIn(appVersion: info.version);
    } else {
      await analytics.optOut();
    }
  }

  Future<void> _confirmClearDatabase(BuildContext context) async {
    final theme = Theme.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('Clear Entire Database?'),
        content: const Text(
          'This will permanently delete all activities, occurrences, and custom categories.\n\nDefault categories will be restored.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogCtx).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: theme.colorScheme.error,
              foregroundColor: theme.colorScheme.onError,
            ),
            onPressed: () => Navigator.of(dialogCtx).pop(true),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );

    if (confirmed != true || !context.mounted) return;

    await DemoSeeder.clearDatabase(ref);

    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Database cleared successfully.'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final themeMode = ref.watch(themeModeProvider);
    final versionLabel = ref
        .watch(packageInfoProvider)
        .when(
          data: (info) => AppConstants.versionLabel(
            version: info.version,
            buildNumber: info.buildNumber,
          ),
          loading: () => l10n.versionLabelLoading(AppConstants.appName),
          error: (_, _) => AppConstants.appName,
        );
    const settingsActions = SettingsActions();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settings)),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _SectionHeader(title: l10n.appearance, theme: theme),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: SegmentedButton<ThemeMode>(
                    style: SegmentedButton.styleFrom(
                      selectedBackgroundColor:
                          theme.colorScheme.primaryContainer,
                      selectedForegroundColor:
                          theme.colorScheme.onPrimaryContainer,
                    ),
                    segments: [
                      ButtonSegment(
                        value: ThemeMode.system,
                        label: Text(l10n.themeSystem),
                        icon: const Icon(
                          Icons.brightness_auto_outlined,
                          size: 18,
                        ),
                      ),
                      ButtonSegment(
                        value: ThemeMode.light,
                        label: Text(l10n.themeLight),
                        icon: const Icon(Icons.light_mode_outlined, size: 18),
                      ),
                      ButtonSegment(
                        value: ThemeMode.dark,
                        label: Text(l10n.themeDark),
                        icon: const Icon(Icons.dark_mode_outlined, size: 18),
                      ),
                    ],
                    selected: {themeMode},
                    onSelectionChanged: (selected) {
                      final mode = selected.single;
                      ref.read(themeModeProvider.notifier).setThemeMode(mode);
                      ref
                          .read(analyticsServiceProvider)
                          .trackThemeChanged(mode.name);
                    },
                  ),
                ),
                const LanguagePickerTile(),
                const Divider(height: 1),
                _SectionHeader(title: l10n.organize, theme: theme),
                SettingsTile(
                  icon: Icons.category_outlined,
                  title: l10n.manageCategories,
                  subtitle: l10n.manageCategoriesSubtitle,
                  showChevron: true,
                  onTap: () => context.push(AppRoutes.categories),
                ),
                const Divider(height: 1),
                _SectionHeader(title: l10n.data, theme: theme),
                SettingsTile(
                  icon: Icons.upload_outlined,
                  title: l10n.exportBackup,
                  subtitle: l10n.exportBackupSubtitle,
                  onTap: () => BackupActions(ref).exportBackup(context),
                ),
                SettingsTile(
                  icon: Icons.download_outlined,
                  title: l10n.importBackup,
                  subtitle: l10n.importBackupSubtitle,
                  onTap: () => BackupActions(ref).importBackup(context),
                ),
                const Divider(height: 1),
                _SectionHeader(title: l10n.privacy, theme: theme),
                SwitchListTile(
                  secondary: const Icon(Icons.analytics_outlined),
                  title: Text(l10n.usageAnalytics),
                  subtitle: Text(l10n.usageAnalyticsSubtitle),
                  value: _analyticsEnabled ?? false,
                  onChanged: _loadingAnalytics
                      ? null
                      : (value) => _setAnalyticsEnabled(value),
                ),
                const Divider(height: 1),
                _SectionHeader(title: l10n.about, theme: theme),
                SettingsTile(
                  icon: Icons.info_outline,
                  title: l10n.aboutApp(AppConstants.appName),
                  showChevron: true,
                  onTap: () => context.push(AppRoutes.about),
                ),
                if (SettingsActions.canShareApp)
                  SettingsTile(
                    icon: Icons.share_outlined,
                    title: l10n.shareApp,
                    subtitle: l10n.shareAppSubtitle(AppConstants.appName),
                    onTap: () {
                      ref
                          .read(analyticsServiceProvider)
                          .trackSettingsActionTapped('share_app');
                      settingsActions.shareApp(context);
                    },
                  ),
                if (SettingsActions.canRateApp)
                  SettingsTile(
                    icon: Icons.star_outline,
                    title: l10n.rateApp,
                    subtitle: l10n.rateAppSubtitle,
                    onTap: () {
                      ref
                          .read(analyticsServiceProvider)
                          .trackSettingsActionTapped('rate_app');
                      settingsActions.rateApp(context);
                    },
                  ),
                SettingsTile(
                  icon: Icons.mail_outline,
                  title: l10n.contactUs,
                  subtitle: l10n.contactUsSubtitle,
                  onTap: () {
                    ref
                        .read(analyticsServiceProvider)
                        .trackSettingsActionTapped('contact_us');
                    settingsActions.contactUs(context);
                  },
                ),
                if (SettingsActions.canShowDeveloperPage)
                  SettingsTile(
                    icon: Icons.apps_outlined,
                    title: l10n.moreApps,
                    subtitle: l10n.moreAppsSubtitle,
                    onTap: () {
                      ref
                          .read(analyticsServiceProvider)
                          .trackSettingsActionTapped('more_apps');
                      settingsActions.openDeveloperPage(context);
                    },
                  ),
                SettingsTile(
                  icon: Icons.privacy_tip_outlined,
                  title: l10n.privacyPolicy,
                  showChevron: true,
                  onTap: () {
                    ref
                        .read(analyticsServiceProvider)
                        .trackSettingsActionTapped('privacy_policy');
                    context.push(AppRoutes.privacy);
                  },
                ),
                const Divider(height: 1),
                _SectionHeader(title: 'DEVELOPER / DEMO TOOLS', theme: theme),
                SettingsTile(
                  icon: Icons.auto_fix_high_outlined,
                  title: 'Seed Demo Data',
                  subtitle:
                      'Wipe & populate sample activities in chosen language',
                  showChevron: true,
                  onTap: () => context.push(AppRoutes.demoSeeder),
                ),
                SettingsTile(
                  icon: Icons.delete_sweep_outlined,
                  title: 'Clear Entire Database',
                  subtitle:
                      'Delete all activities, occurrences & reset categories',
                  textColor: theme.colorScheme.error,
                  iconColor: theme.colorScheme.error,
                  onTap: () => _confirmClearDatabase(context),
                ),
              ],
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                versionLabel,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title, required this.theme});

  final String title;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
