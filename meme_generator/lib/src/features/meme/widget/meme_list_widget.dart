import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/meme/widget/meme_list_scope.dart';
import 'package:meme_generator/src/features/meme/widget/meme_widget.dart';

class MemeListWidget extends StatelessWidget {
  const MemeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var memeList = MemeListScope.memeList.watch(context);

    return ListView(
      children: memeList
          .map(
            (e) => MemeWidget(
              meme: e,
            ),
          )
          .toList(),
    );
  }
}
