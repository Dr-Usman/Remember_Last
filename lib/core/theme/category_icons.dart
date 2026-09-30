import 'package:flutter/material.dart';

/// Curated registry of category icons for consistent styling across the app.
abstract final class CategoryIcons {
  static const Map<String, IconData> icons = {
    'home': Icons.home_rounded,
    'favorite': Icons.favorite_rounded,
    'directions_car': Icons.directions_car_rounded,
    'person': Icons.person_rounded,
    'work': Icons.work_rounded,
    'fitness_center': Icons.fitness_center_rounded,
    'pets': Icons.pets_rounded,
    'payments': Icons.account_balance_wallet_rounded,
    'cleaning_services': Icons.cleaning_services_rounded,
    'yard': Icons.yard_rounded,
    'school': Icons.school_rounded,
    'shopping_cart': Icons.shopping_cart_rounded,
    'restaurant': Icons.restaurant_rounded,
    'flight': Icons.flight_rounded,
    'build': Icons.build_rounded,
    'medical_services': Icons.medical_services_rounded,
    'music_note': Icons.music_note_rounded,
    'palette': Icons.palette_rounded,
    'local_laundry_service': Icons.local_laundry_service_rounded,
    'self_improvement': Icons.self_improvement_rounded,
    'star': Icons.star_rounded,
    'computer': Icons.computer_rounded,
    'water_drop': Icons.water_drop_rounded,
    'directions_bike': Icons.directions_bike_rounded,
    'local_cafe': Icons.local_cafe_rounded,
    'child_care': Icons.child_care_rounded,
    'content_cut': Icons.content_cut_rounded,
    'bolt': Icons.bolt_rounded,
    'notifications': Icons.notifications_rounded,
    'sports_esports': Icons.sports_esports_rounded,
    'movie': Icons.movie_rounded,
    'card_giftcard': Icons.card_giftcard_rounded,
    'bed': Icons.bed_rounded,
    'bathtub': Icons.bathtub_rounded,
    'directions_run': Icons.directions_run_rounded,
    'inventory_2': Icons.inventory_2_rounded,
    'security': Icons.security_rounded,
    'air': Icons.air_rounded,
    'local_gas_station': Icons.local_gas_station_rounded,
    'local_car_wash': Icons.local_car_wash_rounded,
    'medication': Icons.medication_rounded,
    'recycling': Icons.recycling_rounded,
    'checkroom': Icons.checkroom_rounded,
    'savings': Icons.savings_rounded,
    'call': Icons.call_rounded,
    'local_florist': Icons.local_florist_rounded,
    'photo_camera': Icons.photo_camera_rounded,
    'beach_access': Icons.beach_access_rounded,
    'lightbulb': Icons.lightbulb_rounded,
    'category': Icons.category_rounded,
  };

  static const String defaultIconKey = 'category';

  /// Resolves an [IconData] for an icon key, falling back to name heuristic or default.
  static IconData getIcon(String? iconKey, {String? categoryName}) {
    if (iconKey != null && icons.containsKey(iconKey)) {
      return icons[iconKey]!;
    }
    if (categoryName != null) {
      final suggested = suggestIconKey(categoryName);
      if (icons.containsKey(suggested)) {
        return icons[suggested]!;
      }
    }
    return icons[defaultIconKey]!;
  }

  /// Suggests a matching icon key based on keywords in the category name.
  static String suggestIconKey(String name) {
    final lower = name.trim().toLowerCase();
    if (lower.contains('home') ||
        lower.contains('house') ||
        lower.contains('namai') ||
        lower.contains('apartment')) {
      return 'home';
    }
    if (lower.contains('gas') ||
        lower.contains('fuel') ||
        lower.contains('petrol')) {
      return 'local_gas_station';
    }
    if (lower.contains('car wash') || lower.contains('auto wash')) {
      return 'local_car_wash';
    }
    if (lower.contains('car') ||
        lower.contains('auto') ||
        lower.contains('vehic') ||
        lower.contains('drive')) {
      return 'directions_car';
    }
    if (lower.contains('bike') ||
        lower.contains('cycle') ||
        lower.contains('bicycle')) {
      return 'directions_bike';
    }
    if (lower.contains('pill') ||
        lower.contains('vitamin') ||
        lower.contains('pharmacy') ||
        lower.contains('medicat') ||
        lower.contains('prescript')) {
      return 'medication';
    }
    if (lower.contains('health') ||
        lower.contains('doctor') ||
        lower.contains('dentist') ||
        lower.contains('med')) {
      return 'favorite';
    }
    if (lower.contains('fit') ||
        lower.contains('gym') ||
        lower.contains('sport') ||
        lower.contains('workout')) {
      return 'fitness_center';
    }
    if (lower.contains('run') ||
        lower.contains('jog') ||
        lower.contains('walk')) {
      return 'directions_run';
    }
    if (lower.contains('pet') ||
        lower.contains('dog') ||
        lower.contains('cat') ||
        lower.contains('vet') ||
        lower.contains('animal')) {
      return 'pets';
    }
    if (lower.contains('call') ||
        lower.contains('phone') ||
        lower.contains('contact') ||
        lower.contains('talk')) {
      return 'call';
    }
    if (lower.contains('save') ||
        lower.contains('saving') ||
        lower.contains('invest') ||
        lower.contains('crypto')) {
      return 'savings';
    }
    if (lower.contains('work') ||
        lower.contains('job') ||
        lower.contains('office') ||
        lower.contains('task')) {
      return 'work';
    }
    if (lower.contains('pay') ||
        lower.contains('bill') ||
        lower.contains('money') ||
        lower.contains('financ') ||
        lower.contains('bank')) {
      return 'payments';
    }
    if (lower.contains('clean') ||
        lower.contains('wash') ||
        lower.contains('laundry')) {
      return 'cleaning_services';
    }
    if (lower.contains('hair') ||
        lower.contains('barber') ||
        lower.contains('salon') ||
        lower.contains('beard') ||
        lower.contains('cut')) {
      return 'content_cut';
    }
    if (lower.contains('cloth') ||
        lower.contains('wardrobe') ||
        lower.contains('suit') ||
        lower.contains('dry clean')) {
      return 'checkroom';
    }
    if (lower.contains('air') ||
        lower.contains('filter') ||
        lower.contains('hvac') ||
        lower.contains('furnace')) {
      return 'air';
    }
    if (lower.contains('recycle') ||
        lower.contains('trash') ||
        lower.contains('bin') ||
        lower.contains('compost') ||
        lower.contains('garbage')) {
      return 'recycling';
    }
    if (lower.contains('flower') ||
        lower.contains('florist') ||
        lower.contains('rose')) {
      return 'local_florist';
    }
    if (lower.contains('plant') ||
        lower.contains('garden') ||
        lower.contains('tree')) {
      return 'yard';
    }
    if (lower.contains('water') ||
        lower.contains('drink') ||
        lower.contains('hydrate')) {
      return 'water_drop';
    }
    if (lower.contains('coffee') ||
        lower.contains('tea') ||
        lower.contains('cafe')) {
      return 'local_cafe';
    }
    if (lower.contains('kid') ||
        lower.contains('baby') ||
        lower.contains('child')) {
      return 'child_care';
    }
    if (lower.contains('bed') ||
        lower.contains('sheet') ||
        lower.contains('mattress') ||
        lower.contains('sleep')) {
      return 'bed';
    }
    if (lower.contains('bath') ||
        lower.contains('shower') ||
        lower.contains('tooth') ||
        lower.contains('brush')) {
      return 'bathtub';
    }
    if (lower.contains('camera') ||
        lower.contains('photo') ||
        lower.contains('picture') ||
        lower.contains('pic')) {
      return 'photo_camera';
    }
    if (lower.contains('beach') ||
        lower.contains('holiday') ||
        lower.contains('vacation')) {
      return 'beach_access';
    }
    if (lower.contains('idea') ||
        lower.contains('bulb') ||
        lower.contains('lamp')) {
      return 'lightbulb';
    }
    if (lower.contains('computer') ||
        lower.contains('laptop') ||
        lower.contains('tech') ||
        lower.contains('pc') ||
        lower.contains('software')) {
      return 'computer';
    }
    if (lower.contains('power') ||
        lower.contains('electric') ||
        lower.contains('battery') ||
        lower.contains('energy') ||
        lower.contains('smoke')) {
      return 'bolt';
    }
    if (lower.contains('gift') ||
        lower.contains('birthday') ||
        lower.contains('anniversary')) {
      return 'card_giftcard';
    }
    if (lower.contains('game') || lower.contains('gaming')) {
      return 'sports_esports';
    }
    if (lower.contains('movie') ||
        lower.contains('film') ||
        lower.contains('cinema')) {
      return 'movie';
    }
    if (lower.contains('package') ||
        lower.contains('delivery') ||
        lower.contains('mail') ||
        lower.contains('box')) {
      return 'inventory_2';
    }
    if (lower.contains('security') ||
        lower.contains('insur') ||
        lower.contains('protect')) {
      return 'security';
    }
    if (lower.contains('shop') ||
        lower.contains('buy') ||
        lower.contains('grocer')) {
      return 'shopping_cart';
    }
    if (lower.contains('food') ||
        lower.contains('cook') ||
        lower.contains('eat') ||
        lower.contains('meal')) {
      return 'restaurant';
    }
    if (lower.contains('travel') ||
        lower.contains('trip') ||
        lower.contains('flight')) {
      return 'flight';
    }
    if (lower.contains('fix') ||
        lower.contains('repair') ||
        lower.contains('tool')) {
      return 'build';
    }
    if (lower.contains('learn') ||
        lower.contains('book') ||
        lower.contains('read') ||
        lower.contains('study')) {
      return 'school';
    }
    if (lower.contains('mind') ||
        lower.contains('meditat') ||
        lower.contains('yoga')) {
      return 'self_improvement';
    }
    if (lower.contains('person') ||
        lower.contains('self') ||
        lower.contains('me')) {
      return 'person';
    }
    return defaultIconKey;
  }
}
