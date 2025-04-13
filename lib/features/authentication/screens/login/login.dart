import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/common/styles/spacing_styles.dart';
import 'package:shoppy/features/authentication/screens/login/widgets/LoginForm.dart';
import 'package:shoppy/features/authentication/screens/login/widgets/LoginHeader.dart';
import 'package:shoppy/features/authentication/screens/login/widgets/loginFormDivider.dart';
import 'package:shoppy/features/authentication/screens/login/widgets/social_buttons.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NspacingStyles.paddingwithAppbarHeight,
          child: Column(
            children: [
              //logo + title + subtitle
              LoginHeader(dark: dark),

              //form
              const LoginForm(),

              //divider
              loginFormDivider(
                dividerText: Ntexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              //footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
