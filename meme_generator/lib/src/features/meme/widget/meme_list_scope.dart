import 'package:flutter/material.dart';
import 'package:meme_generator/src/core/extension/build_context.dart';
import 'package:meme_generator/src/core/widget/scope/bloc_builder.dart';
import 'package:meme_generator/src/core/widget/scope/value_scope.dart';
import 'package:meme_generator/src/features/meme/domain/meme_list_bloc.dart';
import 'package:meme_generator/src/features/meme/model/model.dart';
import 'package:meme_generator/src/core/widget/scope/scope_utils.dart' as utils;

class MemeListScope extends StatefulWidget {
  const MemeListScope({
    super.key,
    required this.child,
  });

  final Widget child;

  static MemeListBlocDelegate get bloc => const MemeListBlocDelegate();

  static MemeListDelegate get memeList => const MemeListDelegate();

  @override
  State<MemeListScope> createState() => _MemeListScopeState();
}

class _MemeListScopeState extends State<MemeListScope> {
  MemeListBloc? _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bloc?.close();
    _bloc = MemeListBloc(
      repository: context.repository.memeRepository,
    )..add(const MemeListBlocEvent.refresh());
  }

  @override
  void dispose() {
    _bloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ValueScope<MemeListBloc>(
        value: _bloc!,
        child: BlocBuilder<MemeListBlocState>(
          streamable: _bloc!,
          builder: (context, state) => switch (state) {
            MemeListBlocStateLoading() => const ColoredBox(color: Colors.black),
            MemeListBlocStateIdle(memeList: final memeList) => ValueScope<MemeList>(
                value: memeList,
                child: widget.child,
              ),
            MemeListBlocStateError(memeList: final memeList) => memeList == null
                ? const ColoredBox(color: Colors.black)
                : ValueScope<MemeList>(
                    value: memeList,
                    child: widget.child,
                  ),
          },
        ),
      );
}

typedef MemeListBlocDelegate = ValueScopeDelegate<MemeListBloc>;

typedef MemeListDelegate = ValueScopeDelegate<MemeList>;
