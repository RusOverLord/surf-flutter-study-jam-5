import 'package:local_database/local_database.dart';

class DependenciesStorage {
  const DependenciesStorage({
    required this.localDatabase,
  });

  final LocalDatabase localDatabase;

  Future<void> close() async {
    await localDatabase.close();
  }
}
