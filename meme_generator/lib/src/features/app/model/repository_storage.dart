import 'package:local_database/local_database.dart' as local;
import 'package:meme_generator/src/features/app/model/dependencies_storage.dart';
import 'package:meme_generator/src/features/meme/data/meme_repository.dart';

class RepositoryStorage {
  RepositoryStorage({
    required DependenciesStorage dependencies,
  }) : _dependencies = dependencies;

  final DependenciesStorage _dependencies;
  local.LocalDatabase get _localDB => _dependencies.localDatabase;

  late final MemeRepository memeRepository = MemeRepository(
    database: _localDB,
  );
}
