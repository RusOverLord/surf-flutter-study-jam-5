import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/app/widget/app_configuration.dart';
import 'package:meme_generator/src/features/meme/domain/meme_list_bloc.dart';
import 'package:meme_generator/src/features/meme/widget/meme_list_scope.dart';
import 'package:meme_generator/src/features/meme/widget/meme_list_widget.dart';

class MemeListScreen extends StatelessWidget {
  const MemeListScreen({Key? key}) : super(key: key);

  void _add(BuildContext context) => Navigator.pushNamed(context, Routes.home, );

  void _remove(BuildContext context) {
    final memeList = MemeListScope.memeList.read(context);

    if (memeList.isEmpty) return;

    MemeListScope.bloc.read(context).add(MemeListBlocEvent.remove(meme: memeList.first));
  }

  @override
  Widget build(BuildContext context) {
    return MemeListScope(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  onPressed: () => _add(context),
                  icon: const Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
                Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () => _remove(context),
                      icon: const Icon(
                        Icons.remove,
                        size: 40,
                      ),
                    );
                  }
                ),
              ],
            ),
            const Expanded(
              child: MemeListWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
