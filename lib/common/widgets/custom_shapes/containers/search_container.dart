import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class NsearchContainer extends StatelessWidget {
  const NsearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
    this.showBackground = true,
    this.onTap,
  });
  final String text;
  final IconData? icon;
  final bool showBorder, showBackground;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: NSizes.defaultSpace),
          child: Container(
            width: NDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(NSizes.md),
            decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? NColors.dark
                      : NColors.white
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(NSizes.cardRadiusLg),
              border: showBorder
                  ? Border.all(
                      color: dark ? NColors.dark : NColors.light, width: 1.5)
                  : null,
            ),
            child: Row(children: [
              Icon(icon, color: NColors.darkerGrey),
              const SizedBox(width: NSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ]),
          )),
    );
  }
}
