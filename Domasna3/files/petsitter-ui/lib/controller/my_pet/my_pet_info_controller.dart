import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petsitter/utils/strings.dart';

import '../../model/pet_info_selected_model.dart';

class MyPetsInfoController extends GetxController {
  TextEditingController petsNameController = TextEditingController();



  Rx<List<PetInfoModel>> petInfoList=Rx<List<PetInfoModel>>([]);
  var itemCount=0.obs;
  late PetInfoModel petInfoModel;

  addImgAndName(File img,String name){
  petInfoModel=PetInfoModel(petimg: img, petNameText: name);
  petInfoList.value.add(petInfoModel);
  itemCount.value=petInfoList.value.length;
  }



  @override
  void dispose() {
    petsNameController.dispose();
    super.dispose();
  }


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

  RxString petBreedSelectMethod = Strings.selectPetBreed.obs;

  List<String> petBreedList = [
    Strings.abyssinian,
    Strings.aegean,
    Strings.americanBobtail,
    Strings.americanCurl,
    Strings.americanRingtailg,
    Strings.americanShortthair,
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
}
