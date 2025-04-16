import 'package:flutter/material.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/constants/text_strings.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class NtermsAndConditionsCheckbox extends StatelessWidget {
  const NtermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NDeviceUtils.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        Flexible(
          child: Text.rich(TextSpan(
            children: [
              TextSpan(
                text: '${Ntexts.iagreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${Ntexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? NColors.white : NColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? NColors.white : NColors.primary,
                    ),
              ),
              TextSpan(
                text: '${Ntexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${Ntexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? NColors.white : NColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? NColors.white : NColors.primary,
                    ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
