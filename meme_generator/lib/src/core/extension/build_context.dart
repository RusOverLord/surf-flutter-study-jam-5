import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/app/model/dependencies_storage.dart';
import 'package:meme_generator/src/features/app/model/repository_storage.dart';
import 'package:meme_generator/src/features/app/widget/dependencies_scope.dart';
import 'package:meme_generator/src/features/app/widget/repository_scope.dart';

extension BuildContextX on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get screenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);

  DependenciesStorage get dependencies => DependenciesScope.of(this);

  RepositoryStorage get repository => RepositoryScope.of(this);
}
