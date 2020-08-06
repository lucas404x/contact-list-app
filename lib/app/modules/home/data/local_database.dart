import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'DAOs/contact_dao.dart';
import 'tables/contact_table.dart';

part 'local_database.g.dart';

@UseMoor(tables: [ContactTable], daos: [ContactDao])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'contacts.db', logStatements: true));

  @override
  int get schemaVersion => 1;
}
