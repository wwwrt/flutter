import 'package:flutter/material.dart';

import 'common/strings.dart' as strings;
import 'screens/home_screen.dart';

/// The main function of the app that runs the Flutter app.
void main() {
  runApp(const FlutterHomework());
}

/// The root widget of the app that contains the MaterialApp widget.
class FlutterHomework extends StatelessWidget {
  const FlutterHomework({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: strings.appTitle,

      // The HomeScreen widget is the root of the app's home screen
      home: HomeScreen(),
    );
  }
}
