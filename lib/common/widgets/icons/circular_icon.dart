import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class Ncircular_icon extends StatelessWidget {
  const Ncircular_icon({
    super.key,
    this.width,
    this.height,
    this.size = NSizes.lg,
    this.onPressed,
    this.backgroundColor,
    this.iconColor,
    required this.icon,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ??
            (dark
                ? NColors.black.withOpacity(0.9)
                : NColors.white.withOpacity(0.9)),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
