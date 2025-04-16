import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/features/authentication/screens/password_configuration/Reset_password.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(NSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Headding

            Text(Ntexts.forgotPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: NSizes.spaceBtwItems),
            Text(Ntexts.forgotPasswordSubtitle,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: NSizes.spaceBtwSections * 2),
            //TextField
            TextFormField(
              decoration: const InputDecoration(
                labelText: Ntexts.Email,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: NSizes.spaceBtwSections),
            //Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text(Ntexts.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
