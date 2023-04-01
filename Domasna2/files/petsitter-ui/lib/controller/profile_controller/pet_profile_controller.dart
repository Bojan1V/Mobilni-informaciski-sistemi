import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/strings.dart';

class PetProfileController extends GetxController {
 final petNameController=TextEditingController();
 final petGenderController=TextEditingController();
 final petTypeController=TextEditingController();
 final petBreedController=TextEditingController();
 final dateOfBithController=TextEditingController();
 final petWeightController=TextEditingController();


 RxBool isVisible=false.obs;

  void changeStatus() {
     isVisible.toggle();
  }


 @override
  void dispose() {
   petNameController.dispose();
   petGenderController.dispose();
   petTypeController.dispose();
   petBreedController.dispose();
   dateOfBithController.dispose();
   petWeightController.dispose();
    super.dispose();
  }

 var selectedDate = DateTime.now().obs;
  Future<void> selectDate() async {
    final DateTime? picked = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }


    
  RxString selectGender= Strings.male.obs;


  List<String> genderList = [
   Strings.male,
   Strings.female,
   Strings.custom,
  ];

  
  RxString petWeightSelectMethod = Strings.onefivekg.obs;

  List<String> petWeightList = [
    Strings.onefivekg,
    Strings.fiveTenKg,
    Strings.tentowentyKg,
    Strings.twentyFourtyKg,
    Strings.fourtyplustKg,
  ];

  void onPressedUpdate() {
    Get.toNamed(Routes.bottomNavBar);
  }



}
