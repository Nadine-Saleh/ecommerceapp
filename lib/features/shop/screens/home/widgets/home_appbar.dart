import 'package:flutter/material.dart';
import 'package:shoppy/common/widgets/appbar/appbar.dart';
import 'package:shoppy/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/text_strings.dart';

class NhomeAppBar extends StatelessWidget {
  const NhomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NappBar(
      showBackButton: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Ntexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: NColors.grey),
          ),
          Text(
            Ntexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: NColors
                    .white), //apply makes it white for both light and dark mode
          ),
        ],
      ),
      actions: [
        NcartCounterIcon(
          iconColor: NColors.white,
          onPressed: () {},
        )
      ],
    );
  }
}
