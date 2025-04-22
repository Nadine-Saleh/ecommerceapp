import 'package:flutter/material.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/sizes.dart';

class NRoundedContainer extends StatelessWidget {
  const NRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = NSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = NColors.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = NColors.borderPrimary,
  });
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
