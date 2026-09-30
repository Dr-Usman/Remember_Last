import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/theme/category_colors.dart';
import 'package:remember_last/features/categories/presentation/providers/categories_providers.dart';

void main() {
  group('categories_providers helpers', () {
    test(
      'resolveCategoryColor uses map when present, falls back to palette',
      () {
        final map = {'Home': const Color(0xFF123456)};

        expect(resolveCategoryColor('Home', map), const Color(0xFF123456));
        expect(
          resolveCategoryColor('Vehicle', map),
          CategoryColors.pickForName('Vehicle'),
        );
        expect(
          resolveCategoryColor('Health', null),
          CategoryColors.pickForName('Health'),
        );
      },
    );

    test(
      'resolveCategoryIcon uses map when present, falls back to keyword heuristic',
      () {
        final map = {'Custom': 'pets'};

        expect(resolveCategoryIcon('Custom', map), Icons.pets_rounded);
        expect(
          resolveCategoryIcon('Vehicle', map),
          Icons.directions_car_rounded,
        );
        expect(
          resolveCategoryIcon('Unknown Random', null),
          Icons.category_rounded,
        );
      },
    );

    test('CategoryColors provides consistent colors for same name', () {
      final color1 = CategoryColors.pickForName('Home');
      final color2 = CategoryColors.pickForName('Home');
      final colorLower = CategoryColors.pickForName('home');

      expect(color1, color2);
      expect(color1, colorLower);

      final argb = CategoryColors.argbForName('Home');
      expect(CategoryColors.fromArgb(argb), color1);
    });

    test(
      'default categories each have distinct, non-overlapping semantic colors',
      () {
        const defaultNames = [
          'Home',
          'Health',
          'Vehicle',
          'Personal',
          'Work',
          'Fitness',
          'Pets',
          'Finance',
        ];
        final colors = defaultNames.map(CategoryColors.pickForName).toSet();
        expect(
          colors.length,
          defaultNames.length,
          reason: 'Every default category must have a unique color',
        );
      },
    );
  });
}
