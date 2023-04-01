import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class WelcomeController extends GetxController {
  void onPressedSignIn() {
    Get.toNamed(Routes.signInScreen);
  }

  void onPressedSignUp() {
     Get.toNamed(Routes.signUpScreen);
  }
 

  
 
}
