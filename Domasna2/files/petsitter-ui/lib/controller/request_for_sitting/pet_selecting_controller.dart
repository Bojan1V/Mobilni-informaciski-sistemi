import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class PetsSelectingController extends GetxController {


   RxBool isvisibility= false.obs;

  void changeStatus() {
     isvisibility.toggle();
  }




  
  void onPressedContinue() {
    Get.toNamed(Routes.sittingDetailsScreen);
  }

  void onPressedAddAnotherPet() {
    Get.toNamed(Routes.myPetsInfoScreen);
  }

}