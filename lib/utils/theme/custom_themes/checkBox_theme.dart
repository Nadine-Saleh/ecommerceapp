import 'package:flutter/material.dart';

class NCheckBoxTheme {
  NCheckBoxTheme._();
  static CheckboxThemeData lightcheckbox = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? Colors.white
            : Colors.black;
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? Colors.deepOrange[900]
            : Colors.transparent;
      }));
  static CheckboxThemeData darkcheckbox = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? Colors.white
            : Colors.black;
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? Colors.deepOrange[900]
            : Colors.transparent;
      }));
}
