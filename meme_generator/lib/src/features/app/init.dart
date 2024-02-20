import 'package:local_database/local_database.dart';
import 'package:meme_generator/src/features/app/model/dependencies_storage.dart';
import 'package:meme_generator/src/features/app/model/repository_storage.dart';

class InitializationData {
  const InitializationData({
    required this.dependenciesStorage,
    required this.repositoryStorage,
  });

  final DependenciesStorage dependenciesStorage;
  final RepositoryStorage repositoryStorage;
}

Future<InitializationData> init() async {
  final localDatabase = LocalDatabase(name: 'db');
  final dependenciesStorage = DependenciesStorage(
    localDatabase: localDatabase,
  );
  final repositoryStorage = RepositoryStorage(
    dependencies: dependenciesStorage,
  );

  return InitializationData(
    dependenciesStorage: dependenciesStorage,
    repositoryStorage: repositoryStorage,
  );
}
