import 'package:flutter/material.dart';
import 'package:shoppy/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shoppy/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shoppy/common/widgets/layouts/grid_layout.dart';
import 'package:shoppy/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:shoppy/common/widgets/texts/section_heading.dart';
import 'package:shoppy/features/shop/screens/home/widgets/banner_slider.dart';
import 'package:shoppy/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shoppy/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shoppy/utils/constants/image_strings.dart';
import 'package:shoppy/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NprimaryHeader(
              child: Column(
                children: [
                  NhomeAppBar(),
                  SizedBox(height: NSizes.spaceBtwSections),
                  //Search bar
                  NsearchContainer(text: 'Search in store'),
                  SizedBox(height: NSizes.spaceBtwSections),
                  //heading
                  Padding(
                    padding: EdgeInsets.only(left: NSizes.defaultSpace),
                    child: Column(
                      children: [
                        NsectionHeading(
                          title: 'Popular categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: NSizes.spaceBtwItems),

                        //Categories
                        Nhome_categories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            //body
            Padding(
                padding: EdgeInsets.all(NSizes.defaultSpace),
                child: Column(
                  children: [
                    Nbanner_slider(banners: [
                      NImages.banner1,
                      NImages.banner2,
                      NImages.banner3,
                    ]),
                    SizedBox(height: NSizes.spaceBtwSections),

                    //products
                    NGridLayout(
                      itemCount: 6,
                      itemBuilder: (_, index) => NProductCardVertical(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
