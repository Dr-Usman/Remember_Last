import 'package:flutter/material.dart';

/// Reusable pill chip showing a category's name with its theme color and icon.
class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key, required this.label, this.color, this.icon});

  final String label;
  final Color? color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final accent = color;

    final fill = accent != null
        ? accent.withValues(alpha: isDark ? 0.28 : 0.16)
        : (isDark ? scheme.surfaceContainerHighest : const Color(0xFFDBE3EE));
    final border = accent != null
        ? accent.withValues(alpha: isDark ? 0.55 : 0.4)
        : (isDark
              ? scheme.outlineVariant.withValues(alpha: 0.7)
              : scheme.outline.withValues(alpha: 0.35));
    final textColor = accent != null
        ? (isDark ? Color.lerp(accent, Colors.white, 0.35)! : accent)
        : (isDark ? scheme.onSurfaceVariant : scheme.onSurface);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 12, color: textColor),
            const SizedBox(width: 4),
          ],
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
