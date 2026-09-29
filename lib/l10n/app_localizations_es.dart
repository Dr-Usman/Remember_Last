// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get save => 'Guardar';

  @override
  String get add => 'Añadir';

  @override
  String get edit => 'Editar';

  @override
  String get rename => 'Renombrar';

  @override
  String get merge => 'Combinar';

  @override
  String get settings => 'Ajustes';

  @override
  String get insights => 'Estadísticas';

  @override
  String get about => 'Acerca de';

  @override
  String get appearance => 'Apariencia';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get language => 'Idioma';

  @override
  String get languageSystemDefault => 'Predeterminado del sistema';

  @override
  String get organize => 'Organizar';

  @override
  String get manageCategories => 'Gestionar categorías';

  @override
  String get manageCategoriesSubtitle =>
      'Añadir o quitar categorías de actividades';

  @override
  String get data => 'Datos';

  @override
  String get exportBackup => 'Exportar copia de seguridad';

  @override
  String get exportBackupSubtitle => 'Guardar tus datos como JSON';

  @override
  String get importBackup => 'Importar copia de seguridad';

  @override
  String get importBackupSubtitle => 'Restaurar desde un archivo JSON';

  @override
  String get privacy => 'Privacidad';

  @override
  String get usageAnalytics => 'Análisis de uso';

  @override
  String get usageAnalyticsSubtitle =>
      'Compartir el uso anónimo de pantallas y funciones a través de Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Acerca de $appName';
  }

  @override
  String get shareApp => 'Compartir app';

  @override
  String shareAppSubtitle(String appName) {
    return 'Cuéntales a tus amigos sobre $appName';
  }

  @override
  String get rateApp => 'Valorar app';

  @override
  String get rateAppSubtitle => 'Deja una reseña en la tienda de aplicaciones';

  @override
  String get contactUs => 'Contáctanos';

  @override
  String get contactUsSubtitle => 'Enviar comentarios o informar un error';

  @override
  String get moreApps => 'Más aplicaciones';

  @override
  String get moreAppsSubtitle => 'Otras aplicaciones del desarrollador';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String backupShareSubject(String appName) {
    return 'Copia de seguridad de $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Aún no hay nada aquí';

  @override
  String get emptyNothingYetMessage =>
      'Registra cuándo hiciste algo por última vez — regar plantas, lavar el coche, llamar a la familia.';

  @override
  String get addActivity => 'Añadir actividad';

  @override
  String get addActivityFab => 'Añadir actividad';

  @override
  String get noMatches => 'Sin coincidencias';

  @override
  String get noMatchesFilter =>
      'Ninguna actividad coincide con tu búsqueda o filtro.';

  @override
  String get nothingToShow => 'No hay nada que mostrar ahora.';

  @override
  String get clearFilters => 'Borrar filtros';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String get deleteActivityTitle => '¿Eliminar actividad?';

  @override
  String deleteActivityMessage(String title) {
    return '¿Eliminar \"$title\" y todo el historial?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return '¿Eliminar \"$title\" y todo su historial? Esto no se puede deshacer.';
  }

  @override
  String deletedActivity(String title) {
    return 'Se eliminó \"$title\"';
  }

  @override
  String loggedNow(String title) {
    return 'Se registró \"$title\" ahora';
  }

  @override
  String get searchHint => 'Buscar actividades...';

  @override
  String sortTooltip(String sort) {
    return 'Ordenar: $sort';
  }

  @override
  String get sortRecentlyDone => 'Hechas recientemente';

  @override
  String get sortOverdueFirst => 'Vencidas primero';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Todas';

  @override
  String get editActivity => 'Editar actividad';

  @override
  String get newActivity => 'Nueva actividad';

  @override
  String get titleLabel => 'Título *';

  @override
  String get titleHint => 'p. ej. Regar plantas';

  @override
  String get titleRequired => 'El título es obligatorio';

  @override
  String get categoryLabel => 'Categoría';

  @override
  String get categoryHint => 'Hogar, Vehículo, Personal...';

  @override
  String get notes => 'Notas';

  @override
  String get dueInterval => 'Intervalo de vencimiento';

  @override
  String get markDueEveryXDays => 'Marcar como vencida cada X días';

  @override
  String get dueIntervalSubtitle => 'Muestra el estado próximo / vencido';

  @override
  String get frequencyPreset => 'Preajuste de frecuencia';

  @override
  String get daysUntilDue => 'Días hasta el vencimiento';

  @override
  String get daysSuffix => 'días';

  @override
  String fixedByPreset(String preset) {
    return 'Fijado por el preajuste $preset';
  }

  @override
  String get invalidDays => 'Introduce un número válido de días';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get createActivity => 'Crear actividad';

  @override
  String get reminderNone => 'Ninguno';

  @override
  String get reminderDaily => 'Diario';

  @override
  String get reminderWeekly => 'Semanal';

  @override
  String get reminderMonthly => 'Mensual';

  @override
  String get reminderCustom => 'Personalizado';

  @override
  String get statusNeverLogged => 'Nunca registrada';

  @override
  String get statusLogged => 'Registrada';

  @override
  String get statusRecent => 'Reciente';

  @override
  String get statusDueSoon => 'Próxima';

  @override
  String get statusOverdue => 'Vencida';

  @override
  String get editEntry => 'Editar entrada';

  @override
  String get addEntry => 'Añadir entrada';

  @override
  String get date => 'Fecha';

  @override
  String get time => 'Hora';

  @override
  String get noteOptional => 'Nota (opcional)';

  @override
  String get saveEntry => 'Guardar entrada';

  @override
  String get activityNotFound => 'Actividad no encontrada';

  @override
  String get history => 'Historial';

  @override
  String get noLogsYet => 'Aún no hay registros';

  @override
  String get logNow => 'Registrar ahora';

  @override
  String get addCustomEntry => 'Añadir entrada personalizada';

  @override
  String get lastDone => 'Última vez';

  @override
  String get nextDue => 'Próximo vencimiento';

  @override
  String get deleteEntryTitle => '¿Eliminar entrada?';

  @override
  String get deleteEntryMessage =>
      '¿Quitar esta entrada del registro de forma permanente?';

  @override
  String get categoriesTitle => 'Categorías';

  @override
  String get noCategoriesYet =>
      'Aún no hay categorías. Toca Añadir para crear una.';

  @override
  String get deleteCategoryTitle => '¿Eliminar categoría?';

  @override
  String deleteCategoryMessage(String name) {
    return '¿Quitar \"$name\" de las sugerencias? Las actividades que la usan conservarán su categoría.';
  }

  @override
  String get newCategory => 'Nueva categoría';

  @override
  String get categoryHintExample => 'p. ej. Fitness';

  @override
  String get categoryAlreadyExists => 'La categoría ya existe';

  @override
  String get renameCategory => 'Renombrar categoría';

  @override
  String get backupExported => 'Copia de seguridad exportada correctamente';

  @override
  String exportFailed(String error) {
    return 'Error al exportar: $error';
  }

  @override
  String get importBackupTitle => 'Importar copia de seguridad';

  @override
  String get importBackupMessage =>
      '¿Combinar los datos importados con las actividades existentes? Elige Cancelar y vuelve a importar para reemplazar todos los datos.';

  @override
  String get replaceAllDataTitle => '¿Reemplazar todos los datos?';

  @override
  String get replaceAllDataMessage =>
      'Esto eliminará todas las actividades y ocurrencias existentes antes de importar.';

  @override
  String get replaceAll => 'Reemplazar todo';

  @override
  String importedCounts(int activities, int occurrences) {
    return 'Se importaron $activities actividades y $occurrences registros';
  }

  @override
  String importFailed(String error) {
    return 'Error al importar: $error';
  }

  @override
  String get insightsEmpty =>
      'Aún no hay datos. ¡Registra algunas actividades!';

  @override
  String get activityBreakdown => 'Desglose de actividades';

  @override
  String get overview => 'Resumen';

  @override
  String get statActivities => 'Actividades';

  @override
  String get statTotalLogs => 'Registros totales';

  @override
  String mostOverdue(String title) {
    return 'Más vencida: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Tiempo entre registros — $title';
  }

  @override
  String get intervalsCaption =>
      'Cada barra es cuántos días esperaste antes de registrar de nuevo (más reciente primero).';

  @override
  String get latestGap => 'Último intervalo';

  @override
  String get average => 'Promedio';

  @override
  String get reminder => 'Recordatorio';

  @override
  String daysValue(String days) {
    return '$days días';
  }

  @override
  String get needTwoLogs =>
      'Se necesitan al menos 2 registros para mostrar los intervalos entre entradas';

  @override
  String get daysBetweenLogs => 'Días entre registros';

  @override
  String get reminderTarget => 'Objetivo del recordatorio';

  @override
  String averageDaysShort(String days) {
    return 'Prom. ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Recordatorio ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Intervalo $number';
  }

  @override
  String get latest => 'Más reciente';

  @override
  String logsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count registros',
      one: '1 registro',
    );
    return '$_temp0';
  }

  @override
  String logsCountWithAverage(int count, String avg) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count registros',
      one: '1 registro',
    );
    return '$_temp0 • prom. $avg días';
  }

  @override
  String tooltipDays(String days) {
    return '$days días';
  }

  @override
  String aboutBody(String appName) {
    return '$appName es una app sencilla, primero sin conexión, que te ayuda a registrar cuándo hiciste algo por última vez — regar plantas, lavar el coche, llamar a la familia y más.';
  }

  @override
  String get aboutTagline =>
      'Sin rachas. Sin presión. Solo una respuesta clara a \"¿cuándo hice eso por última vez?\"';

  @override
  String get features => 'Funciones';

  @override
  String get featureTrack =>
      'Sigue actividades ilimitadas con intervalos de vencimiento opcionales';

  @override
  String get featureElapsed =>
      'Ve el tiempo transcurrido desde la última vez, con estado Reciente / Próxima / Vencida';

  @override
  String get featureCategories => 'Organiza con categorías personalizadas';

  @override
  String get featureHistory =>
      'Historial completo con entradas con fecha anterior';

  @override
  String get featureInsights =>
      'Estadísticas con intervalos promedio y gráficos';

  @override
  String get featureThemes =>
      'Temas de marca claro y oscuro (sigue el sistema)';

  @override
  String get featureBackup =>
      'Copia de seguridad por exportación/importación JSON';

  @override
  String get featureOffline =>
      '100% sin conexión — tus datos se quedan en tu dispositivo';

  @override
  String get privacyUnableToLoad =>
      'No se pudo cargar la política de privacidad. Puedes verla en línea.';

  @override
  String get openOnline => 'Abrir en línea';

  @override
  String get couldNotOpenPrivacyUrl =>
      'No se pudo abrir la URL de la política de privacidad';

  @override
  String get analyticsConsentTitle => '¿Ayudar a mejorar RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Puedes compartir de forma opcional análisis de uso anónimos con Mixpanel (como qué pantallas visitas y cuándo registras actividades). Nunca enviamos los títulos de tus actividades, notas u otro contenido personal. Puedes cambiar esto en cualquier momento en Ajustes.';

  @override
  String get decline => 'Rechazar';

  @override
  String get accept => 'Aceptar';

  @override
  String get couldNotShareApp => 'No se pudo compartir la app';

  @override
  String get couldNotOpenAppStore =>
      'No se pudo abrir la tienda de aplicaciones';

  @override
  String get couldNotOpenEmail => 'No se pudo abrir la app de correo';

  @override
  String get couldNotOpenDeveloperPage =>
      'No se pudo abrir la página del desarrollador';

  @override
  String get justNow => 'Justo ahora';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count años atrás',
      one: '1 año atrás',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meses atrás',
      one: '1 mes atrás',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días atrás',
      one: '1 día atrás',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horas atrás',
      one: '1 hora atrás',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutos atrás',
      one: '1 minuto atrás',
    );
    return '$_temp0';
  }
}
