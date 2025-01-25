import 'package:flutter/material.dart';

class NCheckBoxTheme {
  NCheckBoxTheme._();
  static CheckboxThemeData lightcheckbox = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? Colors.white
            : Colors.black;
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? Colors.deepOrange[900]
            : Colors.transparent;
      }));
  static CheckboxThemeData darkcheckbox = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? Colors.white
            : Colors.black;
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? Colors.deepOrange[900]
            : Colors.transparent;
      }));
}
