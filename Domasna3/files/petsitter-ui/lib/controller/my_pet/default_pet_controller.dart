
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class DefaultMyPetsScreen extends GetxController{
  void onPressedSkip() {
    Get.toNamed(Routes.bottomNavBar);
  }

  void onPressedAddPet() {
     Get.toNamed(Routes.myPetsTypeScreen);
  }
   
 

}