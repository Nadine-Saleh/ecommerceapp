import 'package:flutter/material.dart';
import 'package:shoppy/common/styles/spacing_styles.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});
  final String image, title, subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: NspacingStyles.paddingwithAppbarHeight,
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              width: NDeviceUtils.getScreenWidth(context) * 0.6,
            ),
            const SizedBox(height: NSizes.spaceBtwItems),
            //Title
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: NSizes.spaceBtwItems),
            //Subtitle
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: NSizes.spaceBtwSections),

            //Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text(Ntexts.Ncontinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
