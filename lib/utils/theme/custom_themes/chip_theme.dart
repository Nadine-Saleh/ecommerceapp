import 'package:flutter/material.dart';

class NChipTheme {
  NChipTheme._();
  static ChipThemeData lightChip = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.deepOrange[900],
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white);
  static ChipThemeData darkChip = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      selectedColor: Colors.deepOrange[900],
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white);
}
