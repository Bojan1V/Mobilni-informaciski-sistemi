import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:petsitter/routes/routes.dart';

class DashboardController extends GetxController {
  final CarouselController carouselController = CarouselController();

  RxInt current = 0.obs;

  RxBool isFilledHeart = false.obs;

  void changeStatus() {
    isFilledHeart.toggle();
  }

  void onPressedOurPetsSeeMore() {
    Get.toNamed(Routes.ourPetsScreen);
  }
}
