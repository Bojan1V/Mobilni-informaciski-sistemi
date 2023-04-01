import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';

class EditPaymentMethodController extends GetxController {
 final userNameController=TextEditingController();
 final emailAddressController=TextEditingController();


  @override
  void dispose() {
    userNameController.dispose();
    emailAddressController.dispose();
    super.dispose();
  }

  void onPressedUpdate() {
    Get.toNamed(Routes.paymentMethodScreen);
  }
 
}
