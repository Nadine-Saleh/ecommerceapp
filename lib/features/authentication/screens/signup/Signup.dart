import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shoppy/features/authentication/screens/login/widgets/loginFormDivider.dart';
import 'package:shoppy/features/authentication/screens/login/widgets/social_buttons.dart';
import 'package:shoppy/features/authentication/screens/signup/signupWedgets/Nsignup_form.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(NSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                Ntexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),

              //form
              const Nsignup_form(),
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              //divider

              LoginFormDivider(
                dividerText: Ntexts.orSignUpWith.capitalize!,
              ),
              //social media buttons
              const SizedBox(
                height: NSizes.spaceBtwSections,
              ),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
