import 'package:flutter/material.dart';
import 'package:shoppy/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding_dot_navigation extends StatelessWidget {
  onboarding_dot_navigation({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = NDeviceUtils.isDarkMode(context);
    return Positioned(
        bottom: NDeviceUtils.getBottomNavBarHeight() + 25,
        left: NSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? NColors.light : NColors.dark,
                dotHeight: 6),
            controller: controller.pagecontroller,
            onDotClicked: controller.dotNavigationClick,
            count: 3));
  }
}
