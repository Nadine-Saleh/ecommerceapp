import 'package:flutter/material.dart';

class NProductPriceText extends StatelessWidget {
  const NProductPriceText({
    super.key,
    required this.price,
    this.currencySign = '\$',
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });
  final String price, currencySign;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$price $currencySign",
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
