import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/features/authentication/controllers/onboarding_controller.dart';
import 'package:shoppy/features/authentication/screens/onboarding/widgets/onboardingPage.dart';
import 'package:shoppy/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shoppy/features/authentication/screens/onboarding/widgets/onboarding_nextbtn.dart';
import 'package:shoppy/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/text_strings.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          //pages
          PageView(
            controller: controller.pagecontroller,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: NImages.onboarding1,
                title: Ntexts.onboardingTitle1,
                subtitle: Ntexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: NImages.onboarding2,
                title: Ntexts.onboardingTitle2,
                subtitle: Ntexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: NImages.onboarding3,
                title: Ntexts.onboardingTitle3,
                subtitle: Ntexts.onboardingSubTitle3,
              ),
            ],
          ),
          //skip button
          const onboarding_skip(),
          //smooth indicator
          const onboarding_dot_navigation(),
          //circular button
          const onboarding_nextbtn()
        ],
      ),
    );
  }
}
