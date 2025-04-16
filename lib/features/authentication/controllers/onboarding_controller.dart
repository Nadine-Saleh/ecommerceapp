import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  // Variables
  final pagecontroller = PageController();
  Rx<int> currentPageIndex = 0.obs;
  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pagecontroller.jumpToPage(index);
  }

  // Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const login());
    } else {
      int page = currentPageIndex.value + 1; // Increment the page index
      pagecontroller.jumpToPage(page); // Use jumpToPage instead of jumpTo
      currentPageIndex.value = page;
    }
  }

  // Update Current Index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pagecontroller.jumpToPage(2);
  }
}
