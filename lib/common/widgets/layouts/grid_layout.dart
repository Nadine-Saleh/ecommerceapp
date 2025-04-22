import 'package:flutter/material.dart';
import 'package:shoppy/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:shoppy/utils/constants/sizes.dart';

class NGridLayout extends StatelessWidget {
  const NGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 250,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: itemCount,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: NSizes.gridViewSpacing,
          crossAxisSpacing: NSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent ?? 250,
        ),
        itemBuilder: itemBuilder);
  }
}
