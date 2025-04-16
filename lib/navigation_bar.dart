import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:shoppy/features/shop/screens/home/home.dart';
import 'package:shoppy/utils/constants/colors.dart';
import 'package:shoppy/utils/device/device_utils.dart';

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Center(child: Text('Store Screen', style: TextStyle(fontSize: 24))),
    Center(child: Text('Wishlist Screen', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
  ];
}

class NNavigationBar extends StatelessWidget {
  const NNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = NDeviceUtils.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(color: darkMode ? NColors.white : NColors.black),
            ),
          ),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
            },
            backgroundColor: darkMode ? NColors.black : NColors.white,
            indicatorColor: darkMode
                ? NColors.white.withOpacity(0.1)
                : NColors.black.withOpacity(0.1),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: [
              NavigationDestination(
                icon: Icon(Iconsax.home,
                    color: darkMode ? NColors.white : NColors.black),
                label: 'Home',
                selectedIcon: Icon(Iconsax.home,
                    color: darkMode ? NColors.white : NColors.black),
              ),
              NavigationDestination(
                icon: Icon(Iconsax.shop,
                    color: darkMode ? NColors.white : NColors.black),
                label: 'Store',
                selectedIcon: Icon(Iconsax.shop,
                    color: darkMode ? NColors.white : NColors.black),
              ),
              NavigationDestination(
                icon: Icon(Iconsax.heart,
                    color: darkMode ? NColors.white : NColors.black),
                label: 'Wishlist',
                selectedIcon: Icon(Iconsax.heart,
                    color: darkMode ? NColors.white : NColors.black),
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user,
                    color: darkMode ? NColors.white : NColors.black),
                label: 'Profile',
                selectedIcon: Icon(Iconsax.user,
                    color: darkMode ? NColors.white : NColors.black),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
