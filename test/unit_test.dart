import 'package:colorful_greetings/helper/random_color_generator.dart';
import 'package:colorful_greetings/helper/string_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RandomColorGenerator', () {
    test('Generated color is not null', () {
      final generator = RandomColorGenerator();
      final color = generator.getRandomColor();
      expect(color, isNotNull);
    });

    test('Generated color components are within valid range', () {
      final generator = RandomColorGenerator();
      final color = generator.getRandomColor();
      const maxColorValue = 255;
      expect(color.red, inInclusiveRange(0, maxColorValue));
      expect(color.green, inInclusiveRange(0, maxColorValue));
      expect(color.blue, inInclusiveRange(0, maxColorValue));
    });

    test('Colors are consistent with the same seed', () {
      const int seed = 12345; // Set a specific seed value
      final generatorWithSeed1 = RandomColorGenerator(seed: seed);
      final generatorWithSeed2 = RandomColorGenerator(seed: seed);

      final color1 = generatorWithSeed1.getRandomColor();
      final color2 = generatorWithSeed2.getRandomColor();

      expect(color1, equals(color2));
    });
  });

  group('getColorString', () {
    test('Returns the correct RGB string representation', () {
      const color = Color.fromRGBO(100, 150, 200, 1);
      final colorString = getColorString(color);
      expect(colorString, 'RGB(100, 150, 200)');
    });
  });
}
