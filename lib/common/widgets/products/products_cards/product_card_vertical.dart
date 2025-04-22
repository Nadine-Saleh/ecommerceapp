import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/common/styles/shadows.dart';
import 'package:shoppy/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shoppy/common/widgets/icons/circular_icon.dart';
import 'package:shoppy/common/widgets/images/rounded_image.dart';
import 'package:shoppy/features/shop/screens/home/widgets/details.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class NProductCardVertical extends StatelessWidget {
  const NProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [NshadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(NSizes.productImageRadius),
          color: dark ? NColors.dark : NColors.white,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //thumbNail , Wishlist button , discount tag
              Flexible(
                child: NRoundedContainer(
                  padding: const EdgeInsets.all(NSizes.sm),
                  backgroundColor: dark ? NColors.darkerGrey : NColors.light,
                  child: Stack(
                    children: [
                      //THUMBNAIL image

                      const Nrounded_Image(
                        imageURL: NImages.product1,
                        applyImageRadius: true,
                      ),

                      //discount tag
                      Positioned(
                        top: 12,
                        child: NRoundedContainer(
                          radius: NSizes.sm,
                          backgroundColor: NColors.secondary.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: NSizes.sm, vertical: NSizes.xs),
                          child: Text(
                            "25%",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .apply(color: NColors.black),
                          ),
                        ),
                      ),
                      //--favourite icon button

                      Positioned(
                        top: 0,
                        right: 0,
                        child: Ncircular_icon(
                          icon: Iconsax.heart5,
                          iconColor: Colors.red[800],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: NSizes.sm,
              ),
              // details

              const Details()
            ]),
      ),
    );
  }
}
