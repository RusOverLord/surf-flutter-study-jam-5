import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meme_generator/src/core/widget/scope/value_scope.dart';
import 'package:meme_generator/src/features/app/model/repository_storage.dart';

@immutable
class RepositoryScope extends StatefulWidget {
  final Widget child;
  final RepositoryStorage storage;

  const RepositoryScope({
    required this.child,
    required this.storage,
    super.key,
  });

  @override
  State<RepositoryScope> createState() => _RepositoryScopeState();

  static RepositoryStorage of(BuildContext context) => ValueScope.watch<RepositoryStorage>(context);
}

class _RepositoryScopeState extends State<RepositoryScope> {
  RepositoryStorage get storage => widget.storage;

  @override
  Widget build(BuildContext context) => ValueScope<RepositoryStorage>(
        value: storage,
        child: widget.child,
      );
}
