import 'dart:math';
import 'package:flutter/material.dart';

/// RGB values are often represented as 8-bit integers, with a range of 0-255.
/// This means that each color component (red, green, and blue) can take on one
/// of 256 possible values, with 0 being the minimum (no intensity) and 255
/// being the maximum (full intensity).
const int _totalColorsInChannel = 256;

/// Fully opaque value for color alpha channel (1.0).
const double _fullyOpaqueValue = 1;

/// Utility class for generating 16777216 random colors using RGBO.
class RandomColorGenerator {
  final Random _random;

  /// Creates a [RandomColorGenerator] instance with an optional [seed].
  ///
  /// If a [seed] is provided, it initializes the random number generator with
  /// the given seed, making the generated colors predictable when the same
  /// seed is used.
  RandomColorGenerator({int? seed}) : _random = Random(seed);

  /// Generates a random non-transparent color.
  Color getRandomColor() {
    final int randomRed = _getCodeForColorChannel();
    final int randomGreen = _getCodeForColorChannel();
    final int randomBlue = _getCodeForColorChannel();

    return Color.fromRGBO(
      randomRed,
      randomGreen,
      randomBlue,
      _fullyOpaqueValue,
    );
  }

  /// Generates a random color component value.
  int _getCodeForColorChannel() {
    return _random.nextInt(_totalColorsInChannel);
  }
}
