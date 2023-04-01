import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class SignUpController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final countryCodeController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void onPressedSignUPButton() {
    Get.toNamed(Routes.emailVarificatonScreen);
  }

 

  RxBool isChecked = false.obs;

  final agree = false.obs;
  @override
  void dispose() {
    emailController.dispose();
    userNameController.dispose();
    countryCodeController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  goToSingInScreen() {
    Get.toNamed(Routes.signInScreen);
  }

  void onPressedSignInText() {
    Get.toNamed(Routes.signInScreen);
  }
RxString countryCode = ''.obs;
}
