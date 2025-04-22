import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final carouselCurrentIndex =
      0.obs; //"obs" makes this integer variable observable/seen by the observer

  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index;
  }
}
