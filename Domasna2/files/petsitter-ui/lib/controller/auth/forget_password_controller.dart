import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class ForgotPasswordController extends GetxController {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
     super.dispose();
  }

  void onPressedSubmit() {
    Get.toNamed(Routes.otpScreen);
  }


}