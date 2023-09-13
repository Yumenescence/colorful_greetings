import 'package:flutter/material.dart';

/// Returns a string representation of the given [color] in RGB format.
String getColorString(Color color) {
  return 'RGB(${color.red}, ${color.green}, ${color.blue})';
}
