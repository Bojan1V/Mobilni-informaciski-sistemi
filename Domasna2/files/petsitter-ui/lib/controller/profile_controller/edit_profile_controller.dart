import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/strings.dart';

class EditProfileController extends GetxController {
 final firstNameController=TextEditingController();
 final lastNameController=TextEditingController();
 final emailController=TextEditingController();
 final countryCodeController=TextEditingController();
 final phoneNumberController=TextEditingController();



   @override
  void dispose() {
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

 
    RxInt selectValue = 1.obs;
  RxString selectMethod = Strings.unitedState.obs;


  List<String> paymentMethod = [
    "africa",
    "bangladesh",
    "canada",
    "united State",
  ];

  File? image;
  final picker = ImagePicker();
  Future chooseFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {}
    update();
  }
  Future chooseFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {}
    update();
  }

  void onPressedUpdate() {
    Get.toNamed(Routes.bottomNavBar);
  }


}
