import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/bootstrap/demo_seeder.dart';

void main() {
  group('DemoSeeder packs validation', () {
    test('contains 10 supported language packs', () {
      expect(DemoSeeder.supportedPacks.length, 10);
    });

    test('every language pack defines all 8 categories with valid icons and color keys', () {
      const expectedIcons = {
        'home',
        'favorite',
        'directions_car',
        'person',
        'work',
        'fitness_center',
        'pets',
        'payments',
      };

      const expectedColorKeys = {
        'home',
        'health',
        'vehicle',
        'personal',
        'work',
        'fitness',
        'pets',
        'finance',
      };

      for (final pack in DemoSeeder.supportedPacks) {
        expect(
          pack.categories.length,
          8,
          reason: '${pack.displayName} (${pack.localeCode}) should have 8 categories',
        );

        final icons = pack.categories.map((c) => c.icon).toSet();
        expect(
          icons,
          expectedIcons,
          reason: '${pack.displayName} has mismatched icons',
        );

        final colorKeys = pack.categories.map((c) => c.colorKey).toSet();
        expect(
          colorKeys,
          expectedColorKeys,
          reason: '${pack.displayName} has mismatched color keys',
        );

        for (final cat in pack.categories) {
          expect(cat.name.trim().isNotEmpty, isTrue);
        }
      }
    });
  });
}
