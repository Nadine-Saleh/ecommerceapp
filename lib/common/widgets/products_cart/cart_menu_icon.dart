import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/utils/constants/colors.dart';

class NcartCounterIcon extends StatelessWidget {
  const NcartCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });
  final Color iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: NColors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '3',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: NColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
