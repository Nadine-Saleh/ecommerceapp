import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/common/widgets/texts/product_price_text.dart';
import 'package:shoppy/common/widgets/texts/product_title_text.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(left: NSizes.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NProductTitleText(title: "cerum vitamin A", smallSize: true),
          const SizedBox(height: NSizes.spaceBtwItems / 2),
          Row(
            children: [
              Text(
                'Floral',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: NColors.darkGrey,
                    ),
              ),
              const SizedBox(
                width: NSizes.xs,
              ),
              const Icon(
                Iconsax.verify5,
                color: NColors.primary,
                size: NSizes.iconXs,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //price
              Positioned(
                  top: 10,
                  child: const NProductPriceText(
                    price: "55",
                    currencySign: "\$",
                  )),

              //add to cart button

              Container(
                decoration: BoxDecoration(
                  color: dark ? NColors.primary : NColors.dark,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(NSizes.cardRadiusMd),
                    bottomRight: Radius.circular(
                      NSizes.productImageRadius,
                    ),
                  ),
                ),
                child: const SizedBox(
                  width: NSizes.iconLg * 1.2,
                  height: NSizes.iconLg * 1.2,
                  child: Center(
                    child: Icon(
                      Iconsax.add,
                      color: NColors.white,
                      size: NSizes.iconLg,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
