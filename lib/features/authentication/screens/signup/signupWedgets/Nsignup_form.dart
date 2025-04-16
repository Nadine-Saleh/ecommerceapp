import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/features/authentication/screens/signup/Verify_email.dart';
import 'package:shoppy/features/authentication/screens/signup/signupWedgets/NtermsAndConditionsCheckbox.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class Nsignup_form extends StatelessWidget {
  const Nsignup_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);

    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: Ntexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(
              width: NSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: Ntexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: NSizes.spaceBtwInputFields,
        ),

        //username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: Ntexts.userName,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(
          height: NSizes.spaceBtwInputFields,
        ),

        //Email
        TextFormField(
          decoration: const InputDecoration(
            labelText: Ntexts.Email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(
          height: NSizes.spaceBtwInputFields,
        ),
        //phone Number
        TextFormField(
          decoration: const InputDecoration(
            labelText: Ntexts.phone,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(
          height: NSizes.spaceBtwInputFields,
        ),
        //password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: Ntexts.password,
            prefixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(
          height: NSizes.spaceBtwInputFields,
        ),
        //terms and conditions
        const NtermsAndConditionsCheckbox(),
        const SizedBox(
          height: NSizes.spaceBtwSections,
        ),
        //sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(Ntexts.createAccount)),
        )
      ],
    ));
  }
}
