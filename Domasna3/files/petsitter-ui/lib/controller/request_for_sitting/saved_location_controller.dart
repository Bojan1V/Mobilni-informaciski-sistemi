import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
class RequestSettingSavedLocationController extends GetxController {
  final locationController=TextEditingController();
  void onPressedAddHome() {
    Get.toNamed(Routes.previewScreen);
  }

  void onPressedAddOffice() {
    Get.toNamed(Routes.previewScreen);
  }


  
  
}