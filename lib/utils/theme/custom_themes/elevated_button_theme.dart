import 'package:flutter/material.dart';

class NElevatedButtonTheme {
  NElevatedButtonTheme._();

  static ElevatedButtonThemeData LightElevatedBtn = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(191, 54, 12, 1),
          foregroundColor: Colors.deepOrange[50],
          elevation: 0,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Color.fromRGBO(191, 54, 12, 1)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))));
  static ElevatedButtonThemeData DarkElevatedBtn = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(191, 54, 12, 1),
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          elevation: 0,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Color.fromRGBO(191, 54, 12, 1)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w600),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))));
}
