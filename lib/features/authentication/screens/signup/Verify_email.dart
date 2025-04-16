import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/common/widgets/success_screen/Success_screen.dart';
import 'package:shoppy/features/authentication/screens/login/login.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const login()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(NImages.onboarding1),
                width: NDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(height: NSizes.spaceBtwItems),
              //Title
              Text(
                Ntexts.verifyEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: NSizes.spaceBtwItems),
              Text(
                'nadine@bestDeveloper.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: NSizes.spaceBtwItems),
              //Subtitle
              Text(
                Ntexts.verifyEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: NSizes.spaceBtwSections),

              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: NImages.success,
                        title: Ntexts.yourAccountCreatedtitle,
                        subtitle: Ntexts.yourAccountCreatedSubtitle,
                        onPressed: () => Get.to(() => const login()),
                      )),
                  child: const Text(Ntexts.Ncontinue),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(Ntexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
