import 'package:drift/drift.dart';
import 'package:local_database/src/connection/open_connection_stub.dart'
    if (dart.library.io) 'package:local_database/src/connection/open_connection_io.dart'
    if (dart.library.html) 'package:local_database/src/connection/open_connection_web.dart'
    as connection;
import 'package:local_database/src/model/model.dart';

part 'local_database.g.dart';

@DriftDatabase(
  include: {
    'package:local_database/drift/tables.drift',
    'package:local_database/drift/memes.drift',
  },
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase({
    required String name,
  }) : super(connection.openConnection(name));

  @override
  int get schemaVersion => 1;
}
