import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/strings.dart';

class ChangeLangguageController extends GetxController {
 final userNameController=TextEditingController();
 final emailAddressController=TextEditingController();

  RxInt selectValue = 1.obs;
  RxString selectMethod = Strings.english.obs;


  List<String> langguageList = [
Strings.english,
Strings.deutsch,
Strings.espanolr,
Strings.francais,
Strings.italiano,
  ];

  void onPressedChangeLangguage() {
    Get.toNamed(Routes.bottomNavBar);
  }


}
