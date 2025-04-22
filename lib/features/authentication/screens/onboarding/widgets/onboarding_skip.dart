import 'package:flutter/material.dart';
import 'package:shoppy/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class onboarding_skip extends StatelessWidget {
  const onboarding_skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);
    return Stack(
      children: [
        Positioned(
          top: NDeviceUtils.getAppBarHeight(),
          right: NSizes.defaultSpace,
          child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            child: Text(
              'Skip',
              style: TextStyle(color: dark ? NColors.light : NColors.dark),
            ),
          ),
        ),
      ],
    );
  }
}
