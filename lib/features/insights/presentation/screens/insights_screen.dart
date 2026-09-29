import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/analytics_provider.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/activity_status.dart';
import '../../../../core/widgets/status_indicator.dart';
import '../../../../l10n/app_localizations.dart';
import '../providers/insights_providers.dart';

class InsightsScreen extends ConsumerStatefulWidget {
  const InsightsScreen({super.key});

  @override
  ConsumerState<InsightsScreen> createState() => _InsightsScreenState();
}

class _InsightsScreenState extends ConsumerState<InsightsScreen> {
  int? _selectedActivityId;

  @override
  void initState() {
    super.initState();
    // Riverpod caches insights — refresh on open so new logs show up.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.invalidate(insightsProvider);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    ref.listen(insightsProvider, (previous, next) {
      next.whenData((insights) {
        ref
            .read(analyticsServiceProvider)
            .trackInsightsViewed(
              totalActivities: insights.totalActivities,
              totalOccurrences: insights.totalLogs,
            );
      });
    });
    final insightsAsync = ref.watch(insightsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.insights)),
      body: insightsAsync.when(
        data: (insights) {
          if (insights.activityInsights.isEmpty) {
            return Center(child: Text(l10n.insightsEmpty));
          }

          final selected = _selectedActivityId == null
              ? insights.activityInsights.first
              : insights.activityInsights.firstWhere(
                  (i) => i.activity.id == _selectedActivityId,
                  orElse: () => insights.activityInsights.first,
                );

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _GlobalStatsCard(insights: insights),
              const SizedBox(height: 16),
              Text(
                l10n.activityBreakdown,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              ...insights.activityInsights.map(
                (item) => Card(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    title: Text(item.activity.title),
                    subtitle: Text(
                      item.averageIntervalDays != null
                          ? l10n.logsCountWithAverage(
                              item.totalLogs,
                              item.averageIntervalDays!.toStringAsFixed(1),
                            )
                          : l10n.logsCount(item.totalLogs),
                    ),
                    trailing: StatusIndicator(
                      status: item.status,
                      compact: true,
                    ),
                    selected: selected.activity.id == item.activity.id,
                    onTap: () =>
                        setState(() => _selectedActivityId = item.activity.id),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _IntervalsSection(insight: selected),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l10n.errorWithDetails('$e'))),
      ),
    );
  }
}

class _GlobalStatsCard extends StatelessWidget {
  const _GlobalStatsCard({required this.insights});

  final GlobalInsight insights;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.overview, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                _StatChip(
                  label: l10n.statActivities,
                  value: '${insights.totalActivities}',
                ),
                const SizedBox(width: 12),
                _StatChip(
                  label: l10n.statTotalLogs,
                  value: '${insights.totalLogs}',
                ),
              ],
            ),
            if (insights.mostOverdue != null) ...[
              const SizedBox(height: 12),
              Text(
                l10n.mostOverdue(insights.mostOverdue!.activity.title),
                style: TextStyle(color: AppColors.overdue),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: Theme.of(context).textTheme.labelSmall),
            Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

/// Gap-between-logs chart for one activity, with avg and reminder reference lines.
class _IntervalsSection extends StatelessWidget {
  const _IntervalsSection({required this.insight});

  final ActivityInsight insight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final activity = insight.activity;
    final hasReminder = activityHasActiveReminder(activity);
    final reminderDays = hasReminder ? activity.reminderDays!.toDouble() : null;
    final avgDays = insight.averageIntervalDays;
    final lastGap = insight.lastIntervalDays;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.timeBetweenLogs(activity.title),
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 4),
        Text(
          l10n.intervalsCaption,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        if (insight.intervals.isNotEmpty) ...[
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (lastGap != null)
                _MetricChip(
                  label: l10n.latestGap,
                  value: l10n.daysValue(lastGap.toStringAsFixed(1)),
                ),
              if (avgDays != null)
                _MetricChip(
                  label: l10n.average,
                  value: l10n.daysValue(avgDays.toStringAsFixed(1)),
                ),
              if (reminderDays != null)
                _MetricChip(
                  label: l10n.reminder,
                  value: l10n.daysValue('${reminderDays.toInt()}'),
                  accent: AppColors.dueSoon,
                ),
            ],
          ),
        ],
        const SizedBox(height: 12),
        if (insight.intervals.isEmpty)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(l10n.needTwoLogs),
            ),
          )
        else
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 12),
              child: Column(
                children: [
                  SizedBox(
                    height: 220,
                    child: BarChart(_buildChartData(context)),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 16,
                    runSpacing: 4,
                    children: [
                      _ChartLegendItem(
                        color: AppColors.primary,
                        label: l10n.daysBetweenLogs,
                      ),
                      if (avgDays != null)
                        _ChartLegendItem(
                          color: AppColors.neutral,
                          label: l10n.average,
                          dashed: true,
                        ),
                      if (reminderDays != null)
                        _ChartLegendItem(
                          color: AppColors.dueSoon,
                          label: l10n.reminderTarget,
                          dashed: true,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  BarChartData _buildChartData(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final activity = insight.activity;
    final hasReminder = activityHasActiveReminder(activity);
    final reminderDays = hasReminder ? activity.reminderDays!.toDouble() : null;
    final avgDays = insight.averageIntervalDays;

    final maxBar = insight.intervals.reduce((a, b) => a > b ? a : b);
    final referenceValues = [maxBar, ?avgDays, ?reminderDays];
    final maxY = referenceValues.reduce((a, b) => a > b ? a : b) * 1.25;

    final axisColor = theme.colorScheme.outline.withValues(alpha: 0.55);
    final horizontalLines = <HorizontalLine>[
      if (avgDays != null)
        HorizontalLine(
          y: avgDays,
          color: AppColors.neutral.withValues(alpha: 0.85),
          strokeWidth: 1.5,
          dashArray: const [6, 4],
          label: HorizontalLineLabel(
            show: true,
            labelResolver: (_) =>
                l10n.averageDaysShort(avgDays.toStringAsFixed(0)),
            style: theme.textTheme.labelSmall?.copyWith(
              color: AppColors.neutral,
              fontWeight: FontWeight.w600,
            ),
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(right: 4, bottom: 2),
          ),
        ),
      if (reminderDays != null)
        HorizontalLine(
          y: reminderDays,
          color: AppColors.dueSoon.withValues(alpha: 0.9),
          strokeWidth: 1.5,
          dashArray: const [4, 4],
          label: HorizontalLineLabel(
            show: true,
            labelResolver: (_) =>
                l10n.reminderDaysShort('${reminderDays.toInt()}'),
            style: theme.textTheme.labelSmall?.copyWith(
              color: AppColors.dueSoon,
              fontWeight: FontWeight.w600,
            ),
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.only(right: 4, top: 2),
          ),
        ),
    ];

    return BarChartData(
      alignment: BarChartAlignment.spaceAround,
      maxY: maxY,
      barTouchData: BarTouchData(
        enabled: true,
        touchTooltipData: BarTouchTooltipData(
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            final days = rod.toY;
            final label = groupIndex == 0
                ? l10n.latestGap
                : l10n.gapNumber(groupIndex + 1);
            return BarTooltipItem(
              '$label\n${l10n.tooltipDays(days.toStringAsFixed(1))}',
              theme.textTheme.labelSmall!.copyWith(color: AppColors.onAccent),
            );
          },
        ),
      ),
      titlesData: FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 28,
            getTitlesWidget: (value, meta) {
              final index = value.toInt();
              if (index < 0 || index >= insight.intervals.length) {
                return const SizedBox.shrink();
              }
              final label = index == 0 ? l10n.latest : '${index + 1}';
              return Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(label, style: theme.textTheme.labelSmall),
              );
            },
          ),
        ),
        // Day counts sit on the left; the Y-axis line is drawn beside them.
        leftTitles: AxisTitles(
          // axisNameWidget: Text(
          //   'Days',
          //   style: theme.textTheme.labelSmall?.copyWith(
          //     color: theme.colorScheme.onSurfaceVariant,
          //   ),
          // ),
          // axisNameSize: 22,
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 28,
            getTitlesWidget: (value, meta) {
              if (value == meta.max || value == meta.min) {
                return const SizedBox.shrink();
              }
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  value.toInt().toString(),
                  style: theme.textTheme.labelSmall,
                  textAlign: TextAlign.right,
                ),
              );
            },
          ),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        // Space on the right so Average / Reminder line labels stay readable.
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false, reservedSize: 72),
        ),
      ),
      gridData: const FlGridData(show: true, drawVerticalLine: false),
      borderData: FlBorderData(
        show: true,
        border: Border(
          left: BorderSide(color: axisColor),
          bottom: BorderSide(color: axisColor),
        ),
      ),
      extraLinesData: ExtraLinesData(horizontalLines: horizontalLines),
      barGroups: [
        for (var i = 0; i < insight.intervals.length; i++)
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: insight.intervals[i],
                color: AppColors.primary,
                width: 16,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(4),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class _MetricChip extends StatelessWidget {
  const _MetricChip({required this.label, required this.value, this.accent});

  final String label;
  final String value;
  final Color? accent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
        border: accent != null
            ? Border.all(color: accent!.withValues(alpha: 0.4))
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: theme.textTheme.labelSmall),
          Text(
            value,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: accent,
            ),
          ),
        ],
      ),
    );
  }
}

class _ChartLegendItem extends StatelessWidget {
  const _ChartLegendItem({
    required this.color,
    required this.label,
    this.dashed = false,
  });

  final Color color;
  final String label;
  final bool dashed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 20,
          height: 2,
          child: dashed
              ? CustomPaint(painter: _DashedLinePainter(color: color))
              : ColoredBox(color: color),
        ),
        const SizedBox(width: 6),
        Text(label, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  _DashedLinePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    const dashWidth = 4.0;
    const gapWidth = 3.0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2;
    var startX = 0.0;
    final y = size.height / 2;
    while (startX < size.width) {
      final endX = (startX + dashWidth).clamp(0.0, size.width);
      canvas.drawLine(Offset(startX, y), Offset(endX, y), paint);
      startX += dashWidth + gapWidth;
    }
  }

  @override
  bool shouldRepaint(covariant _DashedLinePainter oldDelegate) =>
      oldDelegate.color != color;
}
