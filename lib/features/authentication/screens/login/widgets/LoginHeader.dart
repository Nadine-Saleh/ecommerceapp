import 'package:flutter/material.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 125,
            image:
                AssetImage(dark ? NImages.darkAppLogo : NImages.lightAppLogo)),
        Text(
          Ntexts.loginTitle1,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: NSizes.sm,
        ),
        Text(
          Ntexts.loginSubTitle1,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
