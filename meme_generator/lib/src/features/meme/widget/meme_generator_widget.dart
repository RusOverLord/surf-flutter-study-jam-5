import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meme_generator/src/features/app/widget/app_configuration.dart';
import 'package:meme_generator/src/features/meme/domain/meme_bloc.dart';
import 'package:meme_generator/src/features/meme/model/model.dart' as model;
import 'package:meme_generator/src/features/meme/widget/image_picker.dart';
import 'package:meme_generator/src/features/meme/widget/meme_scope.dart';
import 'package:meme_generator/src/features/theme/widget/theme.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:ui' as ui;

class MemeGeneratorWidget extends StatefulWidget {
  const MemeGeneratorWidget({super.key});

  @override
  State<MemeGeneratorWidget> createState() => _MemeGeneratorWidgetState();
}

class _MemeGeneratorWidgetState extends State<MemeGeneratorWidget> {
  late final _boundaryKey = GlobalKey();
  late TextEditingController _controller;
  model.Image? _imageOverride;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final text = MemeScope.meme.text.watch(context);
    _controller.text = text?.value ?? '';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _share() async {
    final boundary = _boundaryKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage();
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    image.dispose();
    final bytes = byteData!.buffer.asUint8List();
    final file = XFile.fromData(
      bytes,
      name: 'meme.png',
      length: bytes.length,
    );
    await Share.shareXFiles([file]);
  }

  Future<void> _pickImage() async {
    final result = await showDialog<model.Image>(
      context: context,
      builder: (context) => const ImagePickerDialog(),
    );

    if (result == null) return;

    _imageOverride = result;
    setState(() {});
  }

  void _save() {
    final meme = model.Meme(
      // не бейте ...
      id: Random().nextInt(100000),
      image: _imageOverride!,
      text: model.Text(
        value: _controller.text,
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    );
    MemeScope.bloc.read(context).add(
          MemeBlocEvent.insert(
            meme: meme,
          ),
        );
  }

  void _toList(BuildContext context) => Navigator.pushNamed(context, Routes.list);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => _toList(context),
                icon: const Icon(
                  Icons.list,
                  size: 40,
                ),
              ),
              IconButton(
                onPressed: _save,
                icon: const Icon(
                  Icons.save,
                  size: 40,
                ),
              ),
              IconButton(
                onPressed: _share,
                icon: const Icon(
                  Icons.share,
                  size: 40,
                ),
              ),
            ],
          ),
          RepaintBoundary(
            key: _boundaryKey,
            child: DecoratedBox(
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
                      image: _imageOverride,
                    ),
                    _MemeTextWidget(
                      controller: _controller,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}

extension on BuildContext {
  _MemeGeneratorWidgetState get _memeState => findAncestorStateOfType<_MemeGeneratorWidgetState>()!;
}

class _MemeImage extends StatelessWidget {
  const _MemeImage({
    this.image,
  });

  final model.Image? image;

  @override
  Widget build(BuildContext context) {
    final image = this.image ?? MemeScope.meme.image.watch(context);

    return SizedBox(
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
          child: GestureDetector(
              onTap: context._memeState._pickImage,
              child: switch (image) {
                null => const ColoredBox(
                    color: Colors.blueGrey,
                    child: Icon(
                      Icons.image,
                      size: 40,
                    ),
                  ),
                model.ImageLocal(file: final file) => Image.file(
                    file,
                    fit: BoxFit.cover,
                  ),
                model.ImageRemote(url: final url) => Image.network(
                    url.toString(),
                    fit: BoxFit.cover,
                  ),
              }),
        ),
      ),
    );
  }
}

class _MemeTextWidget extends StatefulWidget {
  const _MemeTextWidget({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<_MemeTextWidget> createState() => _MemeTextWidgetState();
}

class _MemeTextWidgetState extends State<_MemeTextWidget> {
  late TextStyle _style;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final text = MemeScope.meme.text.watch(context);
    /// не успел настроить сохранение цвета
    _style = (text?.style ?? textStyle).copyWith(color: Colors.white);
  }

  @override
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 50,
          maxHeight: 100,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: IntrinsicWidth(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
              ),
              child: TextField(
                controller: widget.controller,
                textAlign: TextAlign.center,
                style: _style,
                maxLines: null,
                decoration: const InputDecoration.collapsed(
                  hintText: "Что то смешное",
                  hintStyle: hintStyle,
                ),
              ),
            ),
          ),
        ),
      );
}
