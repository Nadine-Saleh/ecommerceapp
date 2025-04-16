import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/features/authentication/screens/password_configuration/Forgot_password.dart';
import 'package:shoppy/features/authentication/screens/signup/Signup.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: NSizes.spaceBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
              decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: Ntexts.Email,
          )),
          const SizedBox(
            height: NSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: Ntexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: NSizes.spaceBtwInputFields / 2,
          ),
          //remember me / forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(Ntexts.rememberMe),
                ],
              ),
              //forget password
              TextButton(
                onPressed: () => Get.to(() => const ForgotPassword()),
                child: const Text(
                  Ntexts.forgetPassword,
                  style: TextStyle(color: NColors.buttonPrimary),
                ),
              )
            ],
          ),
          const SizedBox(
            height: NSizes.spaceBtwSections,
          ),

          //signin button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(Ntexts.signIn))),
          const SizedBox(
            height: NSizes.spaceBtwItems,
          ),
          //create account button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const Signup()),
                  child: const Text(Ntexts.createAccount))),
        ],
      ),
    ));
  }
}
