import 'package:flutter/material.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: NColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: NSizes.iconMd,
                  height: NSizes.iconMd,
                  image: AssetImage(NImages.google))),
        ),
        const SizedBox(
          width: NSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: NColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: NSizes.iconMd,
                  height: NSizes.iconMd,
                  image: AssetImage(NImages.facebook))),
        ),
        const SizedBox(
          width: NSizes.spaceBtwItems,
        )
      ],
    );
  }
}
