import 'package:drift/drift.dart';

@DataClassName('ActivityRow')
class Activities extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get uuid => text().unique()();
  TextColumn get title => text()();
  TextColumn get category => text().nullable()();
  TextColumn get notes => text().nullable()();
  IntColumn get reminderDays => integer().nullable()();
  IntColumn get reminderType => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

@DataClassName('OccurrenceRow')
class Occurrences extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get activityId =>
      integer().references(Activities, #id, onDelete: KeyAction.cascade)();
  DateTimeColumn get doneAt => dateTime()();
  TextColumn get note => text().nullable()();
}

@DataClassName('CategoryRow')
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().unique()();
  IntColumn get color => integer()();
  TextColumn get icon => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
}
