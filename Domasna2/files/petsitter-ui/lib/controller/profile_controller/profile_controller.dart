import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class ProfileScreenController extends GetxController {
  void onPressedEdiProfile() {
    Get.toNamed(Routes.editProfileScreen);
  }

  void onPressedMyPets() {
    Get.toNamed(Routes.petProfileScreen);
  }

  void onPressedSavedLocation() {
    Get.toNamed(Routes.savedLocationScreen);
  }

  void onPressedPaymentMethod() {
     Get.toNamed(Routes.paymentMethodScreen);
  }

  void onPressedChangeLangguage() {
     Get.toNamed(Routes.changeLangguageScreen);
  }

  void onPressedChangePassword() {
     Get.toNamed(Routes.changePasswordScreen);
  }

  

}
