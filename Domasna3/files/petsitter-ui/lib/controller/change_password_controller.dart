import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class ChangePasswordController extends GetxController {
 final enterOldPasswordController=TextEditingController();
 final enterNewPasswordController=TextEditingController();
 final enterConfirmPasswordController=TextEditingController();

  void onPressedChangePassword() {
    Get.toNamed(Routes.bottomNavBar);
  }

  
 
}
