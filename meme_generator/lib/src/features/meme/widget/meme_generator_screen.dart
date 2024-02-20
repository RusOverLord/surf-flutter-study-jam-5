import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/meme/model/model.dart';
import 'package:meme_generator/src/features/meme/widget/meme_generator_widget.dart';
import 'package:meme_generator/src/features/meme/widget/meme_scope.dart';

class MemeGeneratorScreen extends StatelessWidget {
  const MemeGeneratorScreen({
    Key? key,
    this.meme,
  }) : super(key: key);

  final Meme? meme;

  @override
  Widget build(BuildContext context) => MemeScope(
        memeOverride: meme,
        child: const Scaffold(
          backgroundColor: Colors.black,
          body: MemeGeneratorWidget(),
        ),
      );
}
