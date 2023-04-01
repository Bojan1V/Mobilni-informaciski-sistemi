import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/strings.dart';

class CalculateOurChargeController extends GetxController {
 
  final chargeCalculateController=TextEditingController();
  
   @override
  void dispose() {
    chargeCalculateController.dispose();
     super.dispose();
  }


  RxInt selectValue = 1.obs;
  RxString petTypeSelectMethod = Strings.selectPetType.obs;

  List<String> petTypeList = [
    Strings.dog,
    Strings.bird,
    Strings.cat,
    Strings.turtle,
    Strings.rabbit,
    Strings.reptile,
  ];

  RxString petAgeSelectMethod = Strings.selectPetAge.obs;

  List<String> petAgeList = [
    Strings.oneto6,
    Strings.oneTwoYear,
    Strings.twoFiveYear,
    Strings.fiveTemYear,
  ];

  RxString petWeightSelectMethod = Strings.selectPetWeight.obs;

  List<String> petWeightList = [
    Strings.onefivekg,
    Strings.fiveTenKg,
    Strings.tentowentyKg,
    Strings.twentyFourtyKg,
    Strings.fourtyplustKg,
  ];

     RxString petSittingTypeSelect = Strings.selectSittingType.obs;

  List<String> petSittingTypeList = [
    Strings.fullDay,
    Strings.dayCare,
    Strings.nightCare,
  ];

     RxString petBreedSelectMethod = Strings.selectPetBreed.obs;

  List<String> petBreedList = [
    Strings.abyssinian,
    Strings.aegean,
    Strings.americanBobtail,
    Strings.americanCurl,
    Strings.americanRingtailg,
    Strings.americanShortthair,
  ];
}
