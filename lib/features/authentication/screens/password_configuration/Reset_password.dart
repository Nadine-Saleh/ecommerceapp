import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: const AssetImage(NImages.sentEmail),
              width: NDeviceUtils.getScreenWidth(context) * 0.6,
            ),
            const SizedBox(height: NSizes.spaceBtwItems),
            //Title
            Text(
              Ntexts.resetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: NSizes.spaceBtwItems),
            //Subtitle
            Text(
              Ntexts.resetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: NSizes.spaceBtwSections),

            //Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(Ntexts.done),
              ),
            ),
            const SizedBox(height: NSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text(Ntexts.resendEmail)),
            )
          ],
        ),
      ),
    );
  }
}
