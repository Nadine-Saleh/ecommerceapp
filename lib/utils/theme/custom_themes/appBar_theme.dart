import 'package:flutter/material.dart';

class NAppBarTheme {
  NAppBarTheme._();
  static AppBarTheme lightAppBar = const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 24),
      actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black));
  static AppBarTheme darkAppBar = const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 24),
      actionsIconTheme:
          IconThemeData(color: Color.fromARGB(255, 255, 255, 255), size: 24),
      titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 255, 255, 255)));
}
