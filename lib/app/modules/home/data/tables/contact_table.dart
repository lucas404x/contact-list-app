import 'package:moor/moor.dart';

class ContactTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 0, max: 49)();
  TextColumn get email => text()();
  TextColumn get photo => text()();
  TextColumn get number => text()();
}