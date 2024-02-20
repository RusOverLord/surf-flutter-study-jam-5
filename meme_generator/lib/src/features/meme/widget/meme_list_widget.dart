import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/app/widget/app_configuration.dart';
import 'package:meme_generator/src/features/meme/model/model.dart';
import 'package:meme_generator/src/features/meme/widget/meme_list_scope.dart';
import 'package:meme_generator/src/features/meme/widget/meme_widget.dart';

class MemeListWidget extends StatelessWidget {
  const MemeListWidget({super.key});

  void _refactor(BuildContext context, Meme meme) => Navigator.pushNamed(context, Routes.home, arguments: meme);

  @override
  Widget build(BuildContext context) {
    var memeList = MemeListScope.memeList.watch(context);

    return ListView(
      children: memeList
          .map(
            (e) => GestureDetector(
              onTap: () => _refactor(context, e),
              child: MemeWidget(
                meme: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
