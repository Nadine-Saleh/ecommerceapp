import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class onboarding_nextbtn extends StatelessWidget {
  const onboarding_nextbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: NSizes.defaultSpace,
        bottom: NDeviceUtils.getBottomNavBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: CircleBorder()),
            onPressed: () => OnboardingController.instance.nextPage(),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
