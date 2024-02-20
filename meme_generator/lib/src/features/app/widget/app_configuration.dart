import 'package:flutter/material.dart';
import 'package:meme_generator/src/features/meme/widget/meme_generator_screen.dart';
import 'package:meme_generator/src/features/meme/widget/meme_list_screen.dart';

class AppConfiguration extends StatefulWidget {
  const AppConfiguration({super.key});

  @override
  State<AppConfiguration> createState() => _AppConfigurationState();
}

class _AppConfigurationState extends State<AppConfiguration> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          Routes.home: (context) => const MemeGeneratorScreen(),
          Routes.list: (context) => const MemeListScreen(),
        },
      );
}

abstract class Routes {
  static String home = '/';
  static String list = '/list';
}
