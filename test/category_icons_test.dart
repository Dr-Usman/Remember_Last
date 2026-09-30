import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remember_last/core/theme/category_icons.dart';

void main() {
  group('CategoryIcons', () {
    test('resolves known icon keys correctly', () {
      expect(CategoryIcons.getIcon('home'), Icons.home_rounded);
      expect(CategoryIcons.getIcon('favorite'), Icons.favorite_rounded);
      expect(
        CategoryIcons.getIcon('directions_car'),
        Icons.directions_car_rounded,
      );
      expect(
        CategoryIcons.getIcon('fitness_center'),
        Icons.fitness_center_rounded,
      );
      expect(CategoryIcons.getIcon('pets'), Icons.pets_rounded);
      expect(CategoryIcons.getIcon('work'), Icons.work_rounded);
      expect(
        CategoryIcons.getIcon('payments'),
        Icons.account_balance_wallet_rounded,
      );
      expect(CategoryIcons.getIcon('computer'), Icons.computer_rounded);
      expect(CategoryIcons.getIcon('water_drop'), Icons.water_drop_rounded);
      expect(CategoryIcons.getIcon('content_cut'), Icons.content_cut_rounded);
      expect(
        CategoryIcons.getIcon('directions_bike'),
        Icons.directions_bike_rounded,
      );
      expect(CategoryIcons.getIcon('air'), Icons.air_rounded);
      expect(
        CategoryIcons.getIcon('local_gas_station'),
        Icons.local_gas_station_rounded,
      );
      expect(CategoryIcons.getIcon('medication'), Icons.medication_rounded);
      expect(CategoryIcons.getIcon('call'), Icons.call_rounded);
    });

    test('falls back to keyword suggestion when key is null or unknown', () {
      expect(
        CategoryIcons.getIcon(null, categoryName: 'My Car'),
        Icons.directions_car_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Gym Workout'),
        Icons.fitness_center_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Dog grooming'),
        Icons.pets_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Haircut'),
        Icons.content_cut_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Bicycle ride'),
        Icons.directions_bike_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Drink water'),
        Icons.water_drop_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'AC Filter'),
        Icons.air_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Gas refill'),
        Icons.local_gas_station_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Daily Vitamins'),
        Icons.medication_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Call Parents'),
        Icons.call_rounded,
      );
      expect(
        CategoryIcons.getIcon(null, categoryName: 'Unknown Random 123'),
        Icons.category_rounded,
      );
    });

    test('suggestIconKey suggests appropriate keys for common names', () {
      expect(CategoryIcons.suggestIconKey('Home'), 'home');
      expect(CategoryIcons.suggestIconKey('Vehicle'), 'directions_car');
      expect(CategoryIcons.suggestIconKey('Health'), 'favorite');
      expect(CategoryIcons.suggestIconKey('Fitness'), 'fitness_center');
      expect(CategoryIcons.suggestIconKey('Pets'), 'pets');
      expect(CategoryIcons.suggestIconKey('Finance'), 'payments');
      expect(CategoryIcons.suggestIconKey('Personal'), 'person');
      expect(CategoryIcons.suggestIconKey('Work'), 'work');
      expect(CategoryIcons.suggestIconKey('Coffee break'), 'local_cafe');
      expect(CategoryIcons.suggestIconKey('Gaming'), 'sports_esports');
      expect(CategoryIcons.suggestIconKey('Air filter'), 'air');
      expect(CategoryIcons.suggestIconKey('Gasoline'), 'local_gas_station');
      expect(CategoryIcons.suggestIconKey('Prescription'), 'medication');
    });
  });
}
