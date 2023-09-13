import 'package:colorful_greetings/screens/greetings_screen.dart';
import 'package:flutter/material.dart';

/// The main application widget.
class ColorfulGreetingsApp extends StatelessWidget {
  /// Creates a new [ColorfulGreetingsApp] instance.
  const ColorfulGreetingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GreetingsScreen(),
    );
  }
}
