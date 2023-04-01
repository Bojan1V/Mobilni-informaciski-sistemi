import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class SingInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final forgetPasswordController = TextEditingController();

 
  RxBool isChecked = false.obs;


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    forgetPasswordController.dispose();
    super.dispose();
  }



  void onPressedSignIN() {
    Get.toNamed(Routes.defaultMyPetScreen);
  }

  void onPressedSignUp() {
    Get.toNamed(Routes.signUpScreen);
  }

  void onPressedOkay() {
    Get.toNamed(Routes.signInScreen);
  }

 

}
