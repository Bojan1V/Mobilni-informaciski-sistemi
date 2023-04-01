
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class InitialMyPetsScreen extends GetxController{
    void onPressedGoTOMenu() {
      Get.toNamed(Routes.bottomNavBar);
    }
 

}