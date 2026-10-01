import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../core/database/app_database.dart';
import '../core/database/database_provider.dart';
import '../core/providers/locale_override_provider.dart';
import '../core/services/shared_prefs_service.dart';
import '../core/theme/category_colors.dart';
import '../features/activities/domain/entities/activity.dart';
import '../features/activities/domain/enums/reminder_type.dart';
import '../features/occurrences/domain/entities/occurrence.dart';

/// Single occurrence record for seeding with optional note.
class DemoOccurrence {
  const DemoOccurrence({required this.daysAgo, this.note});

  final int daysAgo;
  final String? note;
}

/// Single sample activity configuration with rich occurrence history.
class DemoSample {
  const DemoSample({
    required this.title,
    required this.category,
    required this.reminderDays,
    required this.reminderType,
    required this.occurrences,
  });

  final String title;
  final String category;
  final int reminderDays;
  final ReminderType reminderType;
  final List<DemoOccurrence> occurrences;
}

/// Category definition for demo seeding.
class DemoCategory {
  const DemoCategory({
    required this.name,
    required this.icon,
    required this.colorKey,
  });

  final String name;
  final String icon;
  final String colorKey;
}

/// Localized demo dataset bundle.
class DemoLocalePack {
  const DemoLocalePack({
    required this.localeCode,
    required this.displayName,
    required this.flag,
    required this.categories,
    required this.activities,
  });

  final String localeCode;
  final String displayName;
  final String flag;
  final List<DemoCategory> categories;
  final List<DemoSample> activities;
}

/// Central developer seeder for wiping database, switching language,
/// and populating authentic localized demo data for testing & screenshots.
abstract final class DemoSeeder {
  static const supportedPacks = <DemoLocalePack>[
    // -------------------------------------------------------------------------
    // 1. English (US)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'en',
      displayName: 'English (US)',
      flag: '🇺🇸',
      categories: [
        DemoCategory(name: 'Home', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'Health', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'Vehicle',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'Personal', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'Work', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'Fitness',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'Pets', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'Finance', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'Haircut',
          category: 'Personal',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'Classic fade & trim'),
            DemoOccurrence(daysAgo: 61, note: 'Short summer cut'),
            DemoOccurrence(daysAgo: 90, note: 'Pre-vacation styling'),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'Change bed sheets',
          category: 'Home',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'Washed linen set'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'Water indoor plants',
          category: 'Home',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 1, note: 'Living room monstera & ferns'),
            DemoOccurrence(daysAgo: 5, note: 'Added liquid fertilizer'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'Call parents',
          category: 'Personal',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'Sunday family catch-up'),
            DemoOccurrence(daysAgo: 9, note: 'Video call with kids'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'Car wash & vacuum',
          category: 'Vehicle',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'Deluxe exterior wash & interior clean',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'Check tire pressure',
          category: 'Vehicle',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'Front 33 psi, rear 35 psi'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 2. Deutsch (German)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'de',
      displayName: 'Deutsch (German)',
      flag: '🇩🇪',
      categories: [
        DemoCategory(name: 'Haushalt', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'Gesundheit', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'Fahrzeug',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'Persönlich', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'Arbeit', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'Fitness',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'Haustiere', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'Finanzen', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'Haarschnitt',
          category: 'Persönlich',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'Seiten kurz & Bart gestutzt'),
            DemoOccurrence(daysAgo: 61, note: 'Klassischer Schnitt'),
            DemoOccurrence(daysAgo: 90, note: 'Urlaubshaarschnitt'),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'Bettwäsche wechseln',
          category: 'Haushalt',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'Frische Leinenwäsche bei 60°C'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'Zimmerpflanzen gießen',
          category: 'Haushalt',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 1, note: 'Monstera im Wohnzimmer & Balkon'),
            DemoOccurrence(daysAgo: 5, note: 'Flüssigdünger beigemischt'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'Eltern anrufen',
          category: 'Persönlich',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'Sonntagsanruf'),
            DemoOccurrence(daysAgo: 9, note: 'Videoanruf'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'Autowäsche & Saugen',
          category: 'Fahrzeug',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'Komplettwäsche & Innenraum gereinigt',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'Reifendruck prüfen',
          category: 'Fahrzeug',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'Vorne 2.3 bar, hinten 2.5 bar'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 3. 日本語 (Japanese)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'ja',
      displayName: '日本語 (Japanese)',
      flag: '🇯🇵',
      categories: [
        DemoCategory(name: '家事', icon: 'home', colorKey: 'home'),
        DemoCategory(name: '健康', icon: 'favorite', colorKey: 'health'),
        DemoCategory(name: '乗り物', icon: 'directions_car', colorKey: 'vehicle'),
        DemoCategory(name: 'プライベート', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: '仕事', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'フィットネス',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'ペット', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: '家計・お金', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: '散髪・ヘアカット',
          category: 'プライベート',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'カット＆眉カット'),
            DemoOccurrence(daysAgo: 61, note: '夏用さっぱりショート'),
            DemoOccurrence(daysAgo: 90, note: '旅行前のメンテナンス'),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'シーツの洗濯・交換',
          category: '家事',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'リネン交換＆天日干し'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: '観葉植物の水やり',
          category: '家事',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 1, note: 'リビングのモンステラとベランダ'),
            DemoOccurrence(daysAgo: 5, note: '液体肥料を追加'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: '両親に電話',
          category: 'プライベート',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: '日曜日の定期連絡'),
            DemoOccurrence(daysAgo: 9, note: 'ビデオ通話で孫の顔見せ'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: '洗車・車内掃除',
          category: '乗り物',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 19, note: '手洗い洗車と車内掃除機'),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'タイヤ空気圧点検',
          category: '乗り物',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: '前輪2.3kPa、後輪2.5kPaチェック'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 4. हिन्दी (Hindi)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'hi',
      displayName: 'हिन्दी (Hindi)',
      flag: '🇮🇳',
      categories: [
        DemoCategory(name: 'घर', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'स्वास्थ्य', icon: 'favorite', colorKey: 'health'),
        DemoCategory(name: 'वाहन', icon: 'directions_car', colorKey: 'vehicle'),
        DemoCategory(name: 'व्यक्तिगत', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'कार्य', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'फ़िटनेस',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'पालतू जीव', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'वित्त', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'हेयरकट (बाल कटवाए)',
          category: 'व्यक्तिगत',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'हेयरकट और दाढ़ी ट्रिम'),
            DemoOccurrence(daysAgo: 61, note: 'सिंपल समर कट'),
            DemoOccurrence(daysAgo: 90),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'बेडशीट बदली',
          category: 'घर',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'नई कॉटन बेडशीट लगाई'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'पौधों को पानी दिया',
          category: 'घर',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 1, note: 'कमरे और बालकनी के गमले'),
            DemoOccurrence(daysAgo: 5, note: 'खाद और पानी दिया'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'माता-पिता से बात की',
          category: 'व्यक्तिगत',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'रविवार की फोन पर बात'),
            DemoOccurrence(daysAgo: 9, note: 'परिवार के साथ वीडियो कॉल'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'कार धुलाई और सफाई',
          category: 'वाहन',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 19, note: 'बाहर से धुलाई और अंदर वैक्यूम'),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'टायर हवा चेक की',
          category: 'वाहन',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'आगे 33 psi, पीछे 35 psi भरी'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 5. Español (Spanish)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'es',
      displayName: 'Español (Spanish)',
      flag: '🇪🇸',
      categories: [
        DemoCategory(name: 'Hogar', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'Salud', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'Vehículo',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'Personal', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'Trabajo', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'Fitness',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'Mascotas', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'Finanzas', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'Corte de cabello',
          category: 'Personal',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 33,
              note: 'Corte clásico y arreglo de barba',
            ),
            DemoOccurrence(daysAgo: 61, note: 'Corte de verano'),
            DemoOccurrence(daysAgo: 90),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'Cambiar sábanas',
          category: 'Hogar',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'Sábanas limpias de lino'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'Regar las plantas',
          category: 'Hogar',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 1, note: 'Plantas de la sala y terraza'),
            DemoOccurrence(daysAgo: 5, note: 'Con abono líquido'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'Llamar a mis padres',
          category: 'Personal',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'Charla del domingo'),
            DemoOccurrence(daysAgo: 9, note: 'Videollamada familiar'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'Lavar y aspirar auto',
          category: 'Vehículo',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'Lavado exterior y aspirado de interiores',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'Revisar presión de llantas',
          category: 'Vehículo',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(
              daysAgo: 11,
              note: 'Delanteras 32 psi, traseras 34 psi',
            ),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 6. Lietuvių (Lithuanian)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'lt',
      displayName: 'Lietuvių (Lithuanian)',
      flag: '🇱🇹',
      categories: [
        DemoCategory(name: 'Namai', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'Sveikata', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'Transportas',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'Asmeniniai', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'Darbas', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'Sportas',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'Augintiniai', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'Finansai', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'Kirpėjas / Plaukų kirpimas',
          category: 'Asmeniniai',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'Kirpimas ir barzdos formavimas'),
            DemoOccurrence(daysAgo: 61, note: 'Klasikinis kirpimas'),
            DemoOccurrence(daysAgo: 90),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'Pakeisti patalynę',
          category: 'Namai',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'Švari patalynė išskalbta 60°C'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'Palaistyti gėles',
          category: 'Namai',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 1,
              note: 'Svetainės monstera ir balkono gėlės',
            ),
            DemoOccurrence(daysAgo: 5, note: 'Palaistyta su trąšomis'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'Paskambinti tėvams',
          category: 'Asmeniniai',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'Sekmadienio pokalbis'),
            DemoOccurrence(daysAgo: 9, note: 'Vaizdo skambutis'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'Nuplauti automobilį',
          category: 'Transportas',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'Kėbulo plovimas ir salono siurbimas',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'Patikrinti padangų slėgį',
          category: 'Transportas',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'Priekyje 2.3 bar, gale 2.5 bar'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 7. Français (French)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'fr',
      displayName: 'Français (French)',
      flag: '🇫🇷',
      categories: [
        DemoCategory(name: 'Maison', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'Santé', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'Véhicule',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'Personnel', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'Travail', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'Fitness',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'Animaux', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'Finances', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'Coupe de cheveux',
          category: 'Personnel',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'Dégradé et barbe'),
            DemoOccurrence(daysAgo: 61, note: 'Coupe classique'),
            DemoOccurrence(daysAgo: 90),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'Changer les draps',
          category: 'Maison',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'Draps propres lavés à 60°C'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'Arroser les plantes',
          category: 'Maison',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 1, note: 'Monstera du salon et balcon'),
            DemoOccurrence(daysAgo: 5, note: 'Avec engrais liquide'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'Appeler mes parents',
          category: 'Personnel',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'Appel du dimanche'),
            DemoOccurrence(daysAgo: 9, note: 'Appel vidéo familial'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'Lavage et aspiration voiture',
          category: 'Véhicule',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'Lavage complet et intérieur aspiré',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'Pression des pneus',
          category: 'Véhicule',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'Avant 2.3 bar, arrière 2.5 bar'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 8. Nederlands (Dutch)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'nl',
      displayName: 'Nederlands (Dutch)',
      flag: '🇳🇱',
      categories: [
        DemoCategory(name: 'Thuis', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'Gezondheid', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'Voertuig',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'Persoonlijk', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'Werk', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'Fitness',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'Huisdieren', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'Financiën', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'Kapper / Knippen',
          category: 'Persoonlijk',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'Zijkanten opgeschoren & baard'),
            DemoOccurrence(daysAgo: 61, note: 'Klassieke knipbeurt'),
            DemoOccurrence(daysAgo: 90),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'Beddengoed verschonen',
          category: 'Thuis',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'Schoon beddengoed op 60°C'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'Kamerplanten water geven',
          category: 'Thuis',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 1, note: 'Monstera in woonkamer & balkon'),
            DemoOccurrence(daysAgo: 5, note: 'Vloeibare plantenvoeding'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'Ouders bellen',
          category: 'Persoonlijk',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'Zondags belletje'),
            DemoOccurrence(daysAgo: 9, note: 'Videogesprek met familie'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'Auto wassen & stofzuigen',
          category: 'Voertuig',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'Wasstraat & interieur gestofzuigd',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'Bandenspanning controleren',
          category: 'Voertuig',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'Voor 2.3 bar, achter 2.5 bar'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 9. Română (Romanian)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'ro',
      displayName: 'Română (Romanian)',
      flag: '🇷🇴',
      categories: [
        DemoCategory(name: 'Casă', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'Sănătate', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'Vehicul',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'Personal', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'Muncă', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'Fitness',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'Animale', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'Finanțe', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'Tuns / Frizerie',
          category: 'Personal',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'Tuns clasic și aranjat barbă'),
            DemoOccurrence(daysAgo: 61, note: 'Tuns scurt de vară'),
            DemoOccurrence(daysAgo: 90),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'Schimbat așternuturile',
          category: 'Casă',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(
              daysAgo: 6,
              note: 'Așternuturi curate spălate la 60°C',
            ),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'Udat plantele de interior',
          category: 'Casă',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 1,
              note: 'Monstera din sufragerie și balcon',
            ),
            DemoOccurrence(daysAgo: 5, note: 'Adăugat îngrășământ lichid'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'Sunat părinții',
          category: 'Personal',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'Apel de duminică'),
            DemoOccurrence(daysAgo: 9, note: 'Apel video de familie'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'Spălat și aspirat mașina',
          category: 'Vehicul',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'Spălare completă și aspirat interior',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'Presiunea în anvelope',
          category: 'Vehicul',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'Față 2.3 bar, spate 2.5 bar'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),

    // -------------------------------------------------------------------------
    // 10. ไทย (Thai)
    // -------------------------------------------------------------------------
    DemoLocalePack(
      localeCode: 'th',
      displayName: 'ไทย (Thai)',
      flag: '🇹🇭',
      categories: [
        DemoCategory(name: 'บ้าน', icon: 'home', colorKey: 'home'),
        DemoCategory(name: 'สุขภาพ', icon: 'favorite', colorKey: 'health'),
        DemoCategory(
          name: 'ยานพาหนะ',
          icon: 'directions_car',
          colorKey: 'vehicle',
        ),
        DemoCategory(name: 'ส่วนตัว', icon: 'person', colorKey: 'personal'),
        DemoCategory(name: 'งาน', icon: 'work', colorKey: 'work'),
        DemoCategory(
          name: 'ฟิตเนส',
          icon: 'fitness_center',
          colorKey: 'fitness',
        ),
        DemoCategory(name: 'สัตว์เลี้ยง', icon: 'pets', colorKey: 'pets'),
        DemoCategory(name: 'การเงิน', icon: 'payments', colorKey: 'finance'),
      ],
      activities: [
        DemoSample(
          title: 'ตัดผม',
          category: 'ส่วนตัว',
          reminderDays: 28,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(daysAgo: 33, note: 'ตัดสั้นทรงสุภาพ & เล็มเครา'),
            DemoOccurrence(daysAgo: 61, note: 'ตัดผมรับหน้าร้อน'),
            DemoOccurrence(daysAgo: 90),
            DemoOccurrence(daysAgo: 118),
          ],
        ),
        DemoSample(
          title: 'เปลี่ยนผ้าปูที่นอน',
          category: 'บ้าน',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 6, note: 'ซักเปลี่ยนผ้าปูผืนใหม่'),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 20),
            DemoOccurrence(daysAgo: 27),
          ],
        ),
        DemoSample(
          title: 'รดน้ำต้นไม้ในบ้าน',
          category: 'บ้าน',
          reminderDays: 4,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 1,
              note: 'ต้นไม้ในห้องนั่งเล่นและริมระเบียง',
            ),
            DemoOccurrence(daysAgo: 5, note: 'ใส่ปุ๋ยบำรุงต้นไม้'),
            DemoOccurrence(daysAgo: 9),
            DemoOccurrence(daysAgo: 13),
            DemoOccurrence(daysAgo: 17),
          ],
        ),
        DemoSample(
          title: 'โทรหาพ่อแม่',
          category: 'ส่วนตัว',
          reminderDays: 7,
          reminderType: ReminderType.weekly,
          occurrences: [
            DemoOccurrence(daysAgo: 2, note: 'โทรคุยประจำวันอาทิตย์'),
            DemoOccurrence(daysAgo: 9, note: 'วิดีโอคอลคุยกับครอบครัว'),
            DemoOccurrence(daysAgo: 16),
            DemoOccurrence(daysAgo: 23),
          ],
        ),
        DemoSample(
          title: 'ล้างรถและดูดฝุ่น',
          category: 'ยานพาหนะ',
          reminderDays: 14,
          reminderType: ReminderType.custom,
          occurrences: [
            DemoOccurrence(
              daysAgo: 19,
              note: 'ล้างทำความสะอาดภายนอกและดูดฝุ่นในรถ',
            ),
            DemoOccurrence(daysAgo: 33),
            DemoOccurrence(daysAgo: 48),
          ],
        ),
        DemoSample(
          title: 'ตรวจเช็คลมยาง',
          category: 'ยานพาหนะ',
          reminderDays: 30,
          reminderType: ReminderType.monthly,
          occurrences: [
            DemoOccurrence(daysAgo: 11, note: 'ล้อหน้า 32 psi, ล้อหลัง 34 psi'),
            DemoOccurrence(daysAgo: 42),
            DemoOccurrence(daysAgo: 73),
          ],
        ),
      ],
    ),
  ];

  /// Completely wipes the database and resets to default English categories.
  static Future<void> clearDatabase(WidgetRef ref) async {
    final db = ref.read(databaseProvider);
    await db.clearAllData(reseedDefaultCategories: true);
  }

  /// Wipes the database, changes app language, and populates realistic localized demo data
  /// with multiple occurrence logs and optional notes.
  static Future<void> seedLanguage(WidgetRef ref, DemoLocalePack pack) async {
    final db = ref.read(databaseProvider);
    final activityRepo = ref.read(activityRepositoryProvider);
    final occurrenceRepo = ref.read(occurrenceRepositoryProvider);
    final prefs = ref.read(sharedPrefsServiceProvider);

    // 1. Wipe all occurrences, activities, and categories
    await db.clearAllData(reseedDefaultCategories: false);

    // 2. Set the UI locale
    await ref
        .read(localeOverrideProvider.notifier)
        .setLocale(Locale(pack.localeCode));

    // 3. Insert localized categories
    final now = DateTime.now();
    for (final cat in pack.categories) {
      final color =
          CategoryColors.defaultColors[cat.colorKey] ??
          CategoryColors.pickForName(cat.name);
      await db
          .into(db.categories)
          .insert(
            CategoriesCompanion.insert(
              name: cat.name,
              color: color.toARGB32(),
              icon: drift.Value(cat.icon),
              createdAt: now,
            ),
            mode: drift.InsertMode.insertOrIgnore,
          );
    }

    // 4. Insert localized activities & their rich occurrence history
    const uuid = Uuid();
    for (final sample in pack.activities) {
      final activityId = await activityRepo.insert(
        Activity(
          id: 0,
          uuid: uuid.v4(),
          title: sample.title,
          category: sample.category,
          reminderDays: sample.reminderDays,
          reminderType: sample.reminderType,
          createdAt: now.subtract(const Duration(days: 120)),
          updatedAt: now.subtract(
            Duration(
              days: sample.occurrences.isNotEmpty
                  ? sample.occurrences.first.daysAgo
                  : 0,
            ),
          ),
        ),
      );

      // Insert all occurrences with their timestamps and notes
      for (final occ in sample.occurrences) {
        await occurrenceRepo.insert(
          Occurrence(
            id: 0,
            activityId: activityId,
            doneAt: now.subtract(Duration(days: occ.daysAgo)),
            note: occ.note,
          ),
        );
      }
    }

    await prefs.setBool(PrefsKeys.hasSeededSamples, true);
  }
}
