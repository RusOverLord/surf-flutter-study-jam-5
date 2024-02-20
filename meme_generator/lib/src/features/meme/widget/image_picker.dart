import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meme_generator/src/features/theme/widget/theme.dart';
import 'package:meme_generator/src/features/meme/model/model.dart' as model;

class ImagePickerDialog extends StatelessWidget {
  const ImagePickerDialog({super.key});

  @override
  Widget build(BuildContext context) => const Dialog(
        backgroundColor: Colors.black,
        insetAnimationDuration: Duration(microseconds: 200),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.blueGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: _ImagePicker(),
        ),
      );
}

class _ImagePicker extends StatefulWidget {
  const _ImagePicker();

  @override
  State<_ImagePicker> createState() => __ImagePickerState();
}

class __ImagePickerState extends State<_ImagePicker> with TickerProviderStateMixin {
  CrossFadeState _state = CrossFadeState.showFirst;

  void _pickNetworkImage() {
    _state = CrossFadeState.showSecond;
    setState(() {});
  }

  Future<void> _pickLocalImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      if (!mounted) return;

      final file = File(image.path);
      Navigator.pop(context, model.Image.local(file: file));
    }
  }

  @override
  Widget build(BuildContext context) => AnimatedCrossFade(
        firstChild: const _ImagePickerStateNone(),
        secondChild: const _ImagePickerStateRemote(),
        crossFadeState: _state,
        duration: const Duration(milliseconds: 200),
      );
}

extension on BuildContext {
  __ImagePickerState get _pickerState => findAncestorStateOfType<__ImagePickerState>()!;
}

class _ImagePickerStateNone extends StatelessWidget {
  const _ImagePickerStateNone();

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            style: buttonStyle,
            onPressed: () => context._pickerState._pickNetworkImage(),
            child: const Text('Найти в Интернете'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: buttonStyle,
            onPressed: () => context._pickerState._pickLocalImage(),
            child: const Text('Найти в галерее'),
          ),
        ],
      );
}

class _ImagePickerStateRemote extends StatefulWidget {
  const _ImagePickerStateRemote();

  @override
  State<_ImagePickerStateRemote> createState() => __ImagePickerStateRemoteState();
}

class __ImagePickerStateRemoteState extends State<_ImagePickerStateRemote> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _pop() {
    final uri = Uri.parse(_controller.text);
    Navigator.pop(context, model.Image.remote(url: uri));
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _controller,
            style: textStyle.copyWith(fontSize: 20),
            decoration: InputDecoration.collapsed(
              hintText: "Ссылка ...",
              hintStyle: hintStyle.copyWith(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: buttonStyle,
            onPressed: _pop,
            child: const Text('ОК'),
          ),
        ],
      );
}
