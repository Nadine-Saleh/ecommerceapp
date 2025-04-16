import 'package:flutter/material.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/theme/custom_themes/appBar_theme.dart';
import 'package:shoppy/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shoppy/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shoppy/utils/theme/custom_themes/chip_theme.dart';
import 'package:shoppy/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:shoppy/utils/theme/custom_themes/text_field_theme.dart';
import 'package:shoppy/utils/theme/custom_themes/text_theme.dart';

class NAppTheme {
  NAppTheme._();
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
    primaryColor: Colors.deepOrangeAccent,
    textTheme: NTextTheme.darkTextTheme,
    elevatedButtonTheme: NElevatedButtonTheme.darkElevatedBtn,
    appBarTheme: NAppBarTheme.darkAppBar,
    bottomSheetTheme: NBottomSheetTheme.darkBottomSheet,
    checkboxTheme: NCheckBoxTheme.darkcheckbox,
    chipTheme: NChipTheme.darkChip,
    inputDecorationTheme: NTextfieldTheme.darkField,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: NColors.primary, // 👈 Dark theme cursor
    ),
  );
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.deepOrangeAccent,
    textTheme: NTextTheme.lightTextTheme,
    elevatedButtonTheme: NElevatedButtonTheme.lightElevatedBtn,
    appBarTheme: NAppBarTheme.lightAppBar,
    bottomSheetTheme: NBottomSheetTheme.lightBottomSheet,
    checkboxTheme: NCheckBoxTheme.lightcheckbox,
    chipTheme: NChipTheme.lightChip,
    inputDecorationTheme: NTextfieldTheme.lightField,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: NColors.primary, // 👈 Dark theme cursor
    ),
  );
}
