// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get save => 'Salvar';

  @override
  String get add => 'Adicionar';

  @override
  String get edit => 'Editar';

  @override
  String get rename => 'Renomear';

  @override
  String get merge => 'Mesclar';

  @override
  String get settings => 'Configurações';

  @override
  String get insights => 'Insights';

  @override
  String get about => 'Sobre';

  @override
  String get appearance => 'Aparência';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get language => 'Idioma';

  @override
  String get languageSystemDefault => 'Padrão do sistema';

  @override
  String get organize => 'Organizar';

  @override
  String get manageCategories => 'Gerenciar categorias';

  @override
  String get manageCategoriesSubtitle =>
      'Adicionar ou remover categorias de atividades';

  @override
  String get data => 'Dados';

  @override
  String get exportBackup => 'Exportar backup';

  @override
  String get exportBackupSubtitle => 'Salvar seus dados como JSON';

  @override
  String get importBackup => 'Importar backup';

  @override
  String get importBackupSubtitle => 'Restaurar de um arquivo JSON';

  @override
  String get privacy => 'Privacidade';

  @override
  String get usageAnalytics => 'Análise de uso';

  @override
  String get usageAnalyticsSubtitle =>
      'Compartilhar o uso anônimo de telas e recursos via Mixpanel';

  @override
  String aboutApp(String appName) {
    return 'Sobre o $appName';
  }

  @override
  String get shareApp => 'Compartilhar app';

  @override
  String shareAppSubtitle(String appName) {
    return 'Conte aos amigos sobre o $appName';
  }

  @override
  String get rateApp => 'Avaliar app';

  @override
  String get rateAppSubtitle => 'Deixe uma avaliação na loja de apps';

  @override
  String get contactUs => 'Fale conosco';

  @override
  String get contactUsSubtitle => 'Enviar feedback ou relatar um bug';

  @override
  String get moreApps => 'Mais aplicativos';

  @override
  String get moreAppsSubtitle => 'Outros aplicativos do desenvolvedor';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String backupShareSubject(String appName) {
    return 'Backup do $appName';
  }

  @override
  String versionLabelLoading(String appName) {
    return '$appName …';
  }

  @override
  String get emptyNothingYetTitle => 'Nada aqui ainda';

  @override
  String get emptyNothingYetMessage =>
      'Acompanhe quando você fez algo pela última vez — regar plantas, lavar o carro, ligar para a família.';

  @override
  String get addActivity => 'Adicionar atividade';

  @override
  String get addActivityFab => 'Adicionar atividade';

  @override
  String get noMatches => 'Nenhuma correspondência';

  @override
  String get noMatchesFilter =>
      'Nenhuma atividade corresponde à sua busca ou filtro.';

  @override
  String get nothingToShow => 'Nada para mostrar agora.';

  @override
  String get clearFilters => 'Limpar filtros';

  @override
  String errorWithDetails(String error) {
    return 'Erro: $error';
  }

  @override
  String get deleteActivityTitle => 'Excluir atividade?';

  @override
  String deleteActivityMessage(String title) {
    return 'Excluir \"$title\" e todo o histórico?';
  }

  @override
  String deleteActivityMessageUndo(String title) {
    return 'Excluir \"$title\" e todo o histórico? Isso não pode ser desfeito.';
  }

  @override
  String deletedActivity(String title) {
    return '\"$title\" excluída';
  }

  @override
  String loggedNow(String title) {
    return '\"$title\" registrada agora';
  }

  @override
  String get searchHint => 'Buscar atividades...';

  @override
  String sortTooltip(String sort) {
    return 'Ordenar: $sort';
  }

  @override
  String get sortRecentlyDone => 'Feitas recentemente';

  @override
  String get sortOverdueFirst => 'Atrasadas primeiro';

  @override
  String get sortAlphabetical => 'A–Z';

  @override
  String get categoryAll => 'Todas';

  @override
  String get editActivity => 'Editar atividade';

  @override
  String get newActivity => 'Nova atividade';

  @override
  String get titleLabel => 'Título *';

  @override
  String get titleHint => 'ex.: Regar plantas';

  @override
  String get titleRequired => 'O título é obrigatório';

  @override
  String get categoryLabel => 'Categoria';

  @override
  String get categoryHint => 'Casa, Veículo, Pessoal...';

  @override
  String get notes => 'Notas';

  @override
  String get dueInterval => 'Intervalo de vencimento';

  @override
  String get markDueEveryXDays => 'Marcar como vencida a cada X dias';

  @override
  String get dueIntervalSubtitle => 'Mostra o status em breve / atrasada';

  @override
  String get frequencyPreset => 'Predefinição de frequência';

  @override
  String get daysUntilDue => 'Dias até o vencimento';

  @override
  String get daysSuffix => 'dias';

  @override
  String fixedByPreset(String preset) {
    return 'Fixado pela predefinição $preset';
  }

  @override
  String get invalidDays => 'Insira um número válido de dias';

  @override
  String get saveChanges => 'Salvar alterações';

  @override
  String get createActivity => 'Criar atividade';

  @override
  String get reminderNone => 'Nenhum';

  @override
  String get reminderDaily => 'Diário';

  @override
  String get reminderWeekly => 'Semanal';

  @override
  String get reminderMonthly => 'Mensal';

  @override
  String get reminderCustom => 'Personalizado';

  @override
  String get statusNeverLogged => 'Nunca registrada';

  @override
  String get statusLogged => 'Registrada';

  @override
  String get statusRecent => 'Recente';

  @override
  String get statusDueSoon => 'Em breve';

  @override
  String get statusOverdue => 'Atrasada';

  @override
  String get editEntry => 'Editar entrada';

  @override
  String get addEntry => 'Adicionar entrada';

  @override
  String get date => 'Data';

  @override
  String get time => 'Hora';

  @override
  String get noteOptional => 'Nota (opcional)';

  @override
  String get saveEntry => 'Salvar entrada';

  @override
  String get activityNotFound => 'Atividade não encontrada';

  @override
  String get history => 'Histórico';

  @override
  String get noLogsYet => 'Ainda sem registros';

  @override
  String get logNow => 'Registrar agora';

  @override
  String get addCustomEntry => 'Adicionar entrada personalizada';

  @override
  String get lastDone => 'Última vez';

  @override
  String get nextDue => 'Próximo vencimento';

  @override
  String get deleteEntryTitle => 'Excluir entrada?';

  @override
  String get deleteEntryMessage =>
      'Remover esta entrada do registro permanentemente?';

  @override
  String get categoriesTitle => 'Categorias';

  @override
  String get noCategoriesYet =>
      'Ainda não há categorias. Toque em Adicionar para criar uma.';

  @override
  String get deleteCategoryTitle => 'Excluir categoria?';

  @override
  String deleteCategoryMessage(String name) {
    return 'Remover \"$name\" das sugestões? As atividades que a usam manterão a categoria.';
  }

  @override
  String get newCategory => 'Nova categoria';

  @override
  String get categoryHintExample => 'ex.: Fitness';

  @override
  String get categoryAlreadyExists => 'A categoria já existe';

  @override
  String get renameCategory => 'Renomear categoria';

  @override
  String get backupExported => 'Backup exportado com sucesso';

  @override
  String exportFailed(String error) {
    return 'Falha na exportação: $error';
  }

  @override
  String get importBackupTitle => 'Importar backup';

  @override
  String get importBackupMessage =>
      'Mesclar os dados importados com as atividades existentes? Escolha Cancelar e importe novamente para substituir todos os dados.';

  @override
  String get replaceAllDataTitle => 'Substituir todos os dados?';

  @override
  String get replaceAllDataMessage =>
      'Isso excluirá todas as atividades e ocorrências existentes antes de importar.';

  @override
  String get replaceAll => 'Substituir tudo';

  @override
  String importedCounts(int activities, int occurrences) {
    return '$activities atividades e $occurrences registros importados';
  }

  @override
  String importFailed(String error) {
    return 'Falha na importação: $error';
  }

  @override
  String get insightsEmpty =>
      'Ainda não há dados. Registre algumas atividades!';

  @override
  String get activityBreakdown => 'Detalhamento das atividades';

  @override
  String get overview => 'Visão geral';

  @override
  String get statActivities => 'Atividades';

  @override
  String get statTotalLogs => 'Total de registros';

  @override
  String mostOverdue(String title) {
    return 'Mais atrasada: $title';
  }

  @override
  String timeBetweenLogs(String title) {
    return 'Tempo entre registros — $title';
  }

  @override
  String get intervalsCaption =>
      'Cada barra é quantos dias você esperou antes de registrar de novo (mais recente primeiro).';

  @override
  String get latestGap => 'Último intervalo';

  @override
  String get average => 'Média';

  @override
  String get reminder => 'Lembrete';

  @override
  String daysValue(String days) {
    return '$days dias';
  }

  @override
  String get needTwoLogs =>
      'É preciso pelo menos 2 registros para mostrar os intervalos entre entradas';

  @override
  String get daysBetweenLogs => 'Dias entre registros';

  @override
  String get reminderTarget => 'Meta do lembrete';

  @override
  String averageDaysShort(String days) {
    return 'Média ${days}d';
  }

  @override
  String reminderDaysShort(String days) {
    return 'Lembrete ${days}d';
  }

  @override
  String gapNumber(int number) {
    return 'Intervalo $number';
  }

  @override
  String get latest => 'Mais recente';

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
    return '$_temp0 • média $avg dias';
  }

  @override
  String tooltipDays(String days) {
    return '$days dias';
  }

  @override
  String aboutBody(String appName) {
    return '$appName é um app simples, offline primeiro, que ajuda você a acompanhar quando fez algo pela última vez — regar plantas, lavar o carro, ligar para a família e mais.';
  }

  @override
  String get aboutTagline =>
      'Sem sequências. Sem pressão. Só uma resposta clara para \"quando eu fiz isso pela última vez?\"';

  @override
  String get features => 'Recursos';

  @override
  String get featureTrack =>
      'Acompanhe atividades ilimitadas com intervalos de vencimento opcionais';

  @override
  String get featureElapsed =>
      'Veja o tempo desde a última vez, com status Recente / Em breve / Atrasada';

  @override
  String get featureCategories => 'Organize com categorias personalizadas';

  @override
  String get featureHistory =>
      'Histórico completo com entradas retroativas personalizadas';

  @override
  String get featureInsights => 'Insights com intervalos médios e gráficos';

  @override
  String get featureThemes => 'Temas de marca claro e escuro (segue o sistema)';

  @override
  String get featureBackup => 'Backup por exportação/importação JSON';

  @override
  String get featureOffline =>
      '100% offline — seus dados ficam no seu dispositivo';

  @override
  String get privacyUnableToLoad =>
      'Não foi possível carregar a política de privacidade. Você pode vê-la online.';

  @override
  String get openOnline => 'Abrir online';

  @override
  String get couldNotOpenPrivacyUrl =>
      'Não foi possível abrir o URL da política de privacidade';

  @override
  String get analyticsConsentTitle => 'Ajudar a melhorar o RememberLast?';

  @override
  String get analyticsConsentBody =>
      'Você pode opcionalmente compartilhar análises de uso anônimas com o Mixpanel (como quais telas você visita e quando registra atividades). Nunca enviamos os títulos das atividades, notas ou outro conteúdo pessoal. Você pode alterar isso a qualquer momento em Configurações.';

  @override
  String get decline => 'Recusar';

  @override
  String get accept => 'Aceitar';

  @override
  String get couldNotShareApp => 'Não foi possível compartilhar o app';

  @override
  String get couldNotOpenAppStore => 'Não foi possível abrir a loja de apps';

  @override
  String get couldNotOpenEmail => 'Não foi possível abrir o app de e-mail';

  @override
  String get couldNotOpenDeveloperPage =>
      'Não foi possível abrir a página do desenvolvedor';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String yearsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count anos atrás',
      one: '1 ano atrás',
    );
    return '$_temp0';
  }

  @override
  String monthsAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count meses atrás',
      one: '1 mês atrás',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias atrás',
      one: '1 dia atrás',
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
