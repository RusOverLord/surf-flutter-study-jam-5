import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/meme/widget/meme_generator_widget.dart';
import 'package:meme_generator/src/features/meme/widget/meme_scope.dart';

class MemeGeneratorScreen extends StatelessWidget {
  const MemeGeneratorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MemeScope(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: MemeGeneratorWidget(),
        ),
      );
}
