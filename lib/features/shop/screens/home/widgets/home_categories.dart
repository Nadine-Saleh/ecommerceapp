import 'package:flutter/material.dart';
import 'package:shoppy/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/sizes.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class Nhome_categories extends StatelessWidget {
  const Nhome_categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 9,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Nvertical_image_text(
              image: NImages.clothIcon,
              title: 'Clothes',
              onTap: () {},
            );
          }),
    );
  }
}
