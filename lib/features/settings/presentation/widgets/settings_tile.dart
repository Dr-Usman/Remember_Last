import 'package:flutter/material.dart';

/// Standard settings row with leading icon, title, optional subtitle, and tap.
class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    this.icon,
    this.leadingWidget,
    required this.title,
    this.subtitle,
    this.showChevron = false,
    this.onTap,
    this.iconColor,
    this.textColor,
  });

  final IconData? icon;
  final Widget? leadingWidget;
  final String title;
  final String? subtitle;
  final bool showChevron;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    Widget? leading = leadingWidget;
    if (leading == null && icon != null) {
      leading = Icon(icon, color: iconColor);
    }

    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: textColor != null ? TextStyle(color: textColor) : null,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: textColor != null
                  ? TextStyle(color: textColor!.withValues(alpha: 0.8))
                  : null,
            )
          : null,
      trailing: showChevron ? const Icon(Icons.chevron_right) : null,
      onTap: onTap,
    );
  }
}
