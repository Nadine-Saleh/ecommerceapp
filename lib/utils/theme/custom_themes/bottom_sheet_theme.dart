import 'package:flutter/material.dart';

class NBottomSheetTheme {
  NBottomSheetTheme._();
  static BottomSheetThemeData lightBottomSheet = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.white,
      modalBackgroundColor: Colors.white,
      constraints: BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
  static BottomSheetThemeData darkBottomSheet = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      modalBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
      constraints: BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
}
