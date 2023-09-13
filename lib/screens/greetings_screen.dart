import 'package:colorful_greetings/helper/random_color_generator.dart';
import 'package:colorful_greetings/helper/string_util.dart';
import 'package:flutter/material.dart';

/// Greetings screen with changing background color.
///
/// This widget displays the text "Hello there" in the center of the screen.
/// Upon tapping anywhere on the screen, the background color changes to a
/// random color with animation.
class GreetingsScreen extends StatefulWidget {
  @override
  _GreetingsScreenState createState() => _GreetingsScreenState();
}

class _GreetingsScreenState extends State<GreetingsScreen> {
  Color _backgroundColor = Colors.white;
  final randomColorGenerator = RandomColorGenerator();

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = randomColorGenerator.getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          color: _backgroundColor,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Text(
                'Hello there',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 16),
                alignment: Alignment.bottomCenter,
                child: Text(
                  getColorString(_backgroundColor),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
