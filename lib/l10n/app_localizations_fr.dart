// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get save => 'Enregistrer';

  @override
  String get add => 'Ajouter';

  @override
  String get edit => 'Modifier';

  @override
  String get rename => 'Renommer';

  @override
  String get merge => 'Fusionner';

  @override
  String get settings => 'Paramètres';

  @override
  String get insights => 'Aperçus';

  @override
  String get about => 'À propos';

  @override
  String get appearance => 'Apparence';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get language => 'Langue';

  @override
  String get languageSystemDefault => 'Valeur système';

  @override
  String get organize => 'Organiser';

  @override
  String get manageCategories => 'Gérer les catégories';

  @override
  String get manageCategoriesSubtitle =>
      'Ajouter ou supprimer des catégories d’activités';

  @override
  String get data => 'Données';

  @override
  String get exportBackup => 'Exporter la sauvegarde';

  @override
  String get exportBackupSubtitle => 'Enregistrer vos données en JSON';

  @override
  String get importBackup => 'Importer la sauvegarde';

  @override
  String get importBackupSubtitle => 'Restaurer depuis un fichier JSON';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get usageAnalytics => 'Analyses d’utilisation';

  @override
  String get usageAnalyticsSubtitle =>
      'Partager l’utilisation anonyme des écrans et des fonctionnalités via Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'À propos de $appName';
  }

  @override
  String get shareApp => 'Partager l’appli';

  @override
  String shareAppSubtitle(String appName) {
    return 'Parlez de $appName à vos amis';
  }

  @override
  String get rateApp => 'Noter l’appli';

  @override
  String get rateAppSubtitle => 'Laisser un avis sur l’app store';

  @override
  String get contactUs => 'Nous contacter';

  @override
  String get contactUsSubtitle => 'Envoyer un retour ou signaler un bug';

  @override
  String get moreApps => 'Plus d’applications';

  @override
  String get moreAppsSubtitle => 'Autres applications du développeur';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String backupShareSubject(String appName) {
    return 'Sauvegarde $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Rien ici pour l’instant';

  @override
  String get emptyNothingYetMessage =>
      'Suivez la dernière fois que vous avez fait quelque chose — arroser les plantes, laver la voiture, appeler la famille.';

  @override
  String get addActivity => 'Ajouter une activité';

  @override
  String get addActivityFab => 'Ajouter une activité';

  @override
  String get noMatches => 'Aucun résultat';

  @override
  String get noMatchesFilter =>
      'Aucune activité ne correspond à votre recherche ou filtre.';

  @override
  String get nothingToShow => 'Rien à afficher pour le moment.';

  @override
  String get clearFilters => 'Effacer les filtres';

  @override
  String errorWithDetails(String error) {
    return 'Erreur : $error';
  }

  @override
  String get deleteActivityTitle => 'Supprimer l’activité ?';

  @override
  String deleteActivityMessage(String title) {
    return 'Supprimer « $title » et tout l’historique ?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Supprimer « $title » et tout son historique ? Cette action est irréversible.';
  }

  @override
  String deletedActivity(String title) {
    return '« $title » supprimée';
  }

  @override
  String loggedNow(String title) {
    return '« $title » enregistrée maintenant';
  }

  @override
  String get searchHint => 'Rechercher des activités...';

  @override
  String sortTooltip(String sort) {
    return 'Tri : $sort';
  }

  @override
  String get sortRecentlyDone => 'Faites récemment';

  @override
  String get sortOverdueFirst => 'En retard d’abord';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Toutes';

  @override
  String get editActivity => 'Modifier l’activité';

  @override
  String get newActivity => 'Nouvelle activité';

  @override
  String get titleLabel => 'Titre *';

  @override
  String get titleHint => 'ex. Arroser les plantes';

  @override
  String get titleRequired => 'Le titre est obligatoire';

  @override
  String get categoryLabel => 'Catégorie';

  @override
  String get categoryHint => 'Maison, Véhicule, Personnel...';

  @override
  String get notes => 'Notes';

  @override
  String get dueInterval => 'Intervalle d’échéance';

  @override
  String get markDueEveryXDays => 'Marquer comme dû tous les X jours';

  @override
  String get dueIntervalSubtitle => 'Affiche le statut bientôt dû / en retard';

  @override
  String get frequencyPreset => 'Préréglage de fréquence';

  @override
  String get daysUntilDue => 'Jours jusqu’à l’échéance';

  @override
  String get daysSuffix => 'jours';

  @override
  String fixedByPreset(String preset) {
    return 'Fixé par le préréglage $preset';
  }

  @override
  String get invalidDays => 'Saisissez un nombre de jours valide';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get createActivity => 'Créer l’activité';

  @override
  String get reminderNone => 'Aucun';

  @override
  String get reminderDaily => 'Quotidien';

  @override
  String get reminderWeekly => 'Hebdomadaire';

  @override
  String get reminderMonthly => 'Mensuel';

  @override
  String get reminderCustom => 'Personnalisé';

  @override
  String get statusNeverLogged => 'Jamais enregistrée';

  @override
  String get statusLogged => 'Enregistrée';

  @override
  String get statusRecent => 'Récent';

  @override
  String get statusDueSoon => 'Bientôt dû';

  @override
  String get statusOverdue => 'En retard';

  @override
  String get editEntry => 'Modifier l’entrée';

  @override
  String get addEntry => 'Ajouter une entrée';

  @override
  String get date => 'Date';

  @override
  String get time => 'Heure';

  @override
  String get noteOptional => 'Note (facultatif)';

  @override
  String get saveEntry => 'Enregistrer l’entrée';

  @override
  String get activityNotFound => 'Activité introuvable';

  @override
  String get history => 'Historique';

  @override
  String get noLogsYet => 'Aucun journal pour l’instant';

  @override
  String get logNow => 'Enregistrer maintenant';

  @override
  String get addCustomEntry => 'Ajouter une entrée personnalisée';

  @override
  String get lastDone => 'Dernière fois';

  @override
  String get nextDue => 'Prochaine échéance';

  @override
  String get deleteEntryTitle => 'Supprimer l’entrée ?';

  @override
  String get deleteEntryMessage =>
      'Supprimer définitivement cette entrée du journal ?';

  @override
  String get categoriesTitle => 'Catégories';

  @override
  String get noCategoriesYet =>
      'Aucune catégorie pour l’instant. Appuyez sur Ajouter pour en créer une.';

  @override
  String get deleteCategoryTitle => 'Supprimer la catégorie ?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Retirer « $name » des suggestions ? Les activités qui l’utilisent conserveront leur catégorie.';
  }

  @override
  String get newCategory => 'Nouvelle catégorie';

  @override
  String get categoryHintExample => 'ex. Fitness';

  @override
  String get categoryAlreadyExists => 'Cette catégorie existe déjà';

  @override
  String get renameCategory => 'Renommer la catégorie';

  @override
  String get backupExported => 'Sauvegarde exportée avec succès';

  @override
  String exportFailed(String error) {
    return 'Échec de l’export : $error';
  }

  @override
  String get importBackupTitle => 'Importer la sauvegarde';

  @override
  String get importBackupMessage =>
      'Fusionner les données importées avec les activités existantes ? Choisissez Annuler puis réimportez pour remplacer toutes les données.';

  @override
  String get replaceAllDataTitle => 'Remplacer toutes les données ?';

  @override
  String get replaceAllDataMessage =>
      'Cela supprimera toutes les activités et occurrences existantes avant l’import.';

  @override
  String get replaceAll => 'Tout remplacer';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities activités et $occurrences journaux importés';
  }

  @override
  String importFailed(String error) {
    return 'Échec de l’import : $error';
  }

  @override
  String get insightsEmpty =>
      'Pas encore de données. Enregistrez des activités !';

  @override
  String get activityBreakdown => 'Répartition des activités';

  @override
  String get overview => 'Aperçu';

  @override
  String get statActivities => 'Activités';

  @override
  String get statTotalLogs => 'Journaux totaux';

  @override
  String mostOverdue(String title) {
    return 'Le plus en retard : $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Temps entre les journaux — $title';
  }

  @override
  String get intervalsCaption =>
      'Chaque barre indique combien de jours vous avez attendu avant d’enregistrer à nouveau (plus récent d’abord).';

  @override
  String get latestGap => 'Dernier écart';

  @override
  String get average => 'Moyenne';

  @override
  String get reminder => 'Rappel';

  @override
  String daysValue(String days) {
    return '$days jours';
  }

  @override
  String get needTwoLogs =>
      'Il faut au moins 2 journaux pour afficher les écarts entre les entrées';

  @override
  String get daysBetweenLogs => 'Jours entre les journaux';

  @override
  String get reminderTarget => 'Objectif du rappel';

  @override
  String averageDaysShort(String days) {
    return 'Moy. ${days}j';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Rappel ${days}j';
  }

  @override
  String gapNumber(int number) {
    return 'Écart $number';
  }

  @override
  String get latest => 'Plus récent';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count journaux',
      one: '1 journal',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count journaux',
      one: '1 journal',
    );
    return '$_temp0 • moy. $avg jours';
  }

  @override
  String tooltipDays(String days) {
    return '$days jours';
  }

  @override
  String aboutBody(String appName) {
    return '$appName est une appli simple, d’abord hors ligne, qui vous aide à suivre la dernière fois que vous avez fait quelque chose — arroser les plantes, laver la voiture, appeler la famille, et plus encore.';
  }

  @override
  String get aboutTagline =>
      'Pas de séries. Pas de pression. Juste une réponse claire à « quand ai-je fait ça pour la dernière fois ? »';

  @override
  String get features => 'Fonctionnalités';

  @override
  String get featureTrack =>
      'Suivez un nombre illimité d’activités avec des intervalles d’échéance optionnels';

  @override
  String get featureElapsed =>
      'Voyez le temps écoulé depuis la dernière fois, avec le statut Récent / Bientôt dû / En retard';

  @override
  String get featureCategories =>
      'Organisez avec des catégories personnalisées';

  @override
  String get featureHistory =>
      'Historique complet avec des entrées antidatées personnalisées';

  @override
  String get featureInsights => 'Aperçus avec intervalles moyens et graphiques';

  @override
  String get featureThemes =>
      'Thèmes de marque clair et sombre (suit le système)';

  @override
  String get featureBackup => 'Sauvegarde par export/import JSON';

  @override
  String get featureOffline =>
      '100 % hors ligne — vos données restent sur votre appareil';

  @override
  String get privacyUnableToLoad =>
      'Impossible de charger la politique de confidentialité. Vous pouvez la consulter en ligne.';

  @override
  String get openOnline => 'Ouvrir en ligne';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Impossible d’ouvrir l’URL de la politique de confidentialité';

  @override
  String get analyticsConsentTitle => 'Aider à améliorer RememberLast ?';

  @override
  String get analyticsConsentBody =>
      'Vous pouvez éventuellement partager des analyses d’utilisation anonymes avec Mixpanel (comme les écrans que vous visitez et quand vous enregistrez des activités). Nous n’envoyons jamais vos titres d’activités, notes ou autre contenu personnel. Vous pouvez modifier cela à tout moment dans Paramètres.';

  @override
  String get decline => 'Refuser';

  @override
  String get accept => 'Accepter';

  @override
  String get couldNotShareApp => 'Impossible de partager l’appli';

  @override
  String get couldNotOpenAppStore => 'Impossible d’ouvrir l’app store';

  @override
  String get couldNotOpenEmail => 'Impossible d’ouvrir l’appli e-mail';

  @override
  String get couldNotOpenDeveloperPage =>
      'Impossible d’ouvrir la page du développeur';

  @override
  String get justNow => 'À l’instant';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ans plus tôt',
      one: '1 an plus tôt',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mois plus tôt',
      one: '1 mois plus tôt',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours plus tôt',
      one: '1 jour plus tôt',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count heures plus tôt',
      one: '1 heure plus tôt',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes plus tôt',
      one: '1 minute plus tôt',
    );
    return '$_temp0';
  }
}
