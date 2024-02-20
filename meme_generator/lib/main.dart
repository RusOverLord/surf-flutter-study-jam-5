import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/app/init.dart';
import 'package:meme_generator/src/features/app/widget/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final initializationData = await init();

  runApp(
    App(
      initializationData: initializationData,
    ),
  );
}
