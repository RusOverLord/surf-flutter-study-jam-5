import 'package:flutter/widgets.dart';
import 'package:meme_generator/src/features/app/init.dart';
import 'package:meme_generator/src/features/app/widget/app_configuration.dart';
import 'package:meme_generator/src/features/app/widget/dependencies_scope.dart';
import 'package:meme_generator/src/features/app/widget/repository_scope.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.initializationData,
  });

  final InitializationData initializationData;

  @override
  Widget build(BuildContext context) => DependenciesScope(
        storage: initializationData.dependenciesStorage,
        child: RepositoryScope(
          storage: initializationData.repositoryStorage,
          child: const AppConfiguration(),
        ),
      );
}
