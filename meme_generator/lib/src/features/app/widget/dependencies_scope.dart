import 'package:meme_generator/src/core/widget/scope/value_scope.dart';
import 'package:meme_generator/src/features/app/model/dependencies_storage.dart';
import 'package:flutter/material.dart';

@immutable
class DependenciesScope extends StatefulWidget {
  final Widget child;
  final DependenciesStorage storage;

  const DependenciesScope({
    required this.child,
    required this.storage,
    super.key,
  });

  @override
  State<DependenciesScope> createState() => _DependenciesScopeState();

  static DependenciesStorage of(BuildContext context) => ValueScope.watch<DependenciesStorage>(context);
}

class _DependenciesScopeState extends State<DependenciesScope> {
  DependenciesStorage get storage => widget.storage;

  @override
  void dispose() {
    storage.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ValueScope<DependenciesStorage>(
        value: storage,
        child: widget.child,
      );
}
