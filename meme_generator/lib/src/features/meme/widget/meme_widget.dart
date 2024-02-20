import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/meme/model/model.dart' as model;

class MemeWidget extends StatelessWidget {
  const MemeWidget({
    super.key,
    required this.meme,
  });

  final model.Meme meme;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _MemeImage(
                image: meme.image,
              ),
              _MemeTextWidget(
                text: meme.text,
              ),
            ],
          ),
        ),
      );
}

class _MemeImage extends StatelessWidget {
  const _MemeImage({
    required this.image,
  });

  final model.Image image;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        height: 200,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: switch (image) {
              model.ImageLocal(file: final file) => Image.file(
                  file,
                  fit: BoxFit.cover,
                ),
              model.ImageRemote(url: final url) => Image.network(
                  url.toString(),
                  fit: BoxFit.cover,
                ),
            },
          ),
        ),
      );
}

class _MemeTextWidget extends StatelessWidget {
  const _MemeTextWidget({
    required this.text,
  });

  final model.Text text;

  @override
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 50,
          maxHeight: 150,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: IntrinsicWidth(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
              ),
              child: Text(
                text.value,
                style: text.style,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
}
