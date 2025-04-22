import 'package:flutter/material.dart';
import 'package:shoppy/utils/constants/colors.dart';

class NshadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: NColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: NColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
