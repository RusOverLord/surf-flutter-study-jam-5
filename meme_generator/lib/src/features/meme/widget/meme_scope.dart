import 'package:flutter/widgets.dart' hide Image, Text;
import 'package:meme_generator/src/core/extension/build_context.dart';
import 'package:meme_generator/src/core/widget/scope/bloc_builder.dart';
import 'package:meme_generator/src/core/widget/scope/selector_scope.dart';
import 'package:meme_generator/src/core/widget/scope/value_scope.dart';
import 'package:meme_generator/src/features/meme/domain/meme_bloc.dart';
import 'package:meme_generator/src/features/meme/model/image.dart';
import 'package:meme_generator/src/features/meme/model/meme.dart';
import 'package:meme_generator/src/features/meme/model/text.dart';

class MemeScope extends StatefulWidget {
  const MemeScope({
    super.key,
    required this.child,
  });

  final Widget child;

  static MemeBlocDelegate get bloc => const MemeBlocDelegate();

  static MemeDelegate get meme => const MemeDelegate();

  @override
  State<MemeScope> createState() => _MemeScopeState();
}

class _MemeScopeState extends State<MemeScope> {
  MemeBloc? _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bloc?.close();
    _bloc = MemeBloc(
      repository: context.repository.memeRepository,
    );
  }

  @override
  void dispose() {
    _bloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ValueScope<MemeBloc>(
        value: _bloc!,
        child: BlocBuilder<MemeBlocState>(
          streamable: _bloc!,
          builder: (context, state) => ValueScope<MemeBlocState>(
            value: state,
            child: SelectorScope<Meme?>(
              value: state.meme,
              child: widget.child,
            ),
          ),
        ),
      );
}

typedef _Data = Meme?;
typedef _SelectorScope = SelectorScope<_Data>;
typedef _MemeDelegateMixin<T extends Object?> = SelectorScopeSelectedDelegateMixin<_Data, _SelectorScope, T>;

typedef MemeBlocDelegate = ValueScopeDelegate<MemeBloc>;

class MemeDelegate with SelectorScopeDelegateMixin<_Data, _SelectorScope> {
  const MemeDelegate();

  IdDelegate get id => const IdDelegate();

  ImageDelegate get image => const ImageDelegate();

  TextDelegate get text => const TextDelegate();
}

class IdDelegate with _MemeDelegateMixin<MemeId?> {
  const IdDelegate();

  @override
  IdSelector get selector => const IdSelector();
}

class ImageDelegate with _MemeDelegateMixin<Image?> {
  const ImageDelegate();

  @override
  ImageSelector get selector => const ImageSelector();
}

class TextDelegate with _MemeDelegateMixin<Text?> {
  const TextDelegate();

  @override
  TextSelector get selector => const TextSelector();
}

class IdSelector extends EqualitySelector<_Data, MemeId?> {
  const IdSelector();

  @override
  MemeId? select(Meme? value) => value?.id;
}

class ImageSelector extends EqualitySelector<_Data, Image?> {
  const ImageSelector();

  @override
  Image? select(Meme? value) => value?.image;
}

class TextSelector extends EqualitySelector<_Data, Text?> {
  const TextSelector();

  @override
  Text? select(Meme? value) => value?.text;
}
