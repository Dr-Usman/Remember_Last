import 'package:flutter/material.dart';

/// Curated palette for category chips — distinct, brand-friendly hues.
abstract final class CategoryColors {
  /// Semantic colors assigned to default categories for instant recognition.
  static const Map<String, Color> defaultColors = {
    'health': Color(0xFFE11D48), // Rose / Crimson
    'finance': Color(0xFF10B981), // Emerald Green
    'home': Color(0xFFEA580C), // Warm Terracotta / Coral
    'vehicle': Color(0xFF2563EB), // Royal Blue
    'personal': Color(0xFF8B5CF6), // Violet / Purple
    'work': Color(0xFF4F46E5), // Indigo
    'fitness': Color(0xFFF59E0B), // Vibrant Amber / Orange
    'pets': Color(0xFF0D9488), // Teal / Cyan
  };

  /// High-contrast palette for custom user categories (avoids collisions).
  static const List<Color> palette = [
    Color(0xFF2563EB), // blue
    Color(0xFF10B981), // emerald
    Color(0xFFF59E0B), // amber
    Color(0xFF8B5CF6), // violet
    Color(0xFFE11D48), // rose
    Color(0xFF0D9488), // teal
    Color(0xFFEA580C), // terracotta
    Color(0xFF4F46E5), // indigo
    Color(0xFF0284C7), // sky
    Color(0xFFD946EF), // fuchsia
    Color(0xFF16A34A), // green
    Color(0xFF64748B), // slate
  ];

  /// Stable palette color from [name] (same name → same color).
  static Color pickForName(String name) {
    final key = name.trim().toLowerCase();
    if (key.isEmpty) return palette.first;
    final exact = defaultColors[key];
    if (exact != null) return exact;

    final hash = key.codeUnits.fold<int>(0, (h, c) => 31 * h + c);
    return palette[hash.abs() % palette.length];
  }

  static int argbForName(String name) => pickForName(name).toARGB32();

  static Color fromArgb(int argb) => Color(argb);
}
