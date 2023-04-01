import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class WaitApprovalController extends GetxController {
  void onPressedOkay() {
 Get.toNamed(Routes.bottomNavBar);
  }

  void onPressedTrackYour() {
    Get.toNamed(Routes.requestStatusScreen);
  }
  
}

