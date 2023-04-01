import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/assets.dart';
import '../../utils/strings.dart';
import '../../widgets/our_pets_widget.dart';

class OutPetsScreenController extends GetxController {
  var ourPetList = <OurPetWidget>[].obs;

  @override
  void onInit() {
    fatchProduct();
    super.onInit();
  }

  void fatchProduct() async {
    var ourPetRezult = [
      OurPetWidget(
        petimg: Assets.minidog,
        petText: Strings.grigioCham,
        fromText: Strings.unitedState,
        peopleText: Strings.brionalJhon,
        peopleImg: Assets.breedMan,
        reactText: Strings.fork,
        widget: Container(),
      ),
      OurPetWidget(
        petimg: Assets.minicat,
        petText: Strings.grigioCham,
        fromText: Strings.unitedState,
        peopleText: Strings.brionalJhon,
        peopleImg: Assets.breedMan,
        reactText: Strings.fork,
        widget: Container(),
      ),
      OurPetWidget(
        petimg: Assets.dogBreeds,
        petText: Strings.grigioCham,
        fromText: Strings.unitedState,
        peopleText: Strings.brionalJhon,
        peopleImg: Assets.breedMan,
        reactText: Strings.fork,
        widget: Container(),
      ),
      OurPetWidget(
        petimg: Assets.blackCat,
        petText: Strings.grigioCham,
        fromText: Strings.unitedState,
        peopleText: Strings.brionalJhon,
        peopleImg: Assets.breedMan,
        reactText: Strings.fork,
        widget: Container(),
      ),
      OurPetWidget(
        petimg: Assets.dashboardDog,
        petText: Strings.grigioCham,
        fromText: Strings.unitedState,
        peopleText: Strings.brionalJhon,
        peopleImg: Assets.breedMan,
        reactText: Strings.fork,
        widget: Container(),
      ),
      OurPetWidget(
        petimg: Assets.minicat,
        petText: Strings.grigioCham,
        fromText: Strings.unitedState,
        peopleText: Strings.brionalJhon,
        peopleImg: Assets.breedMan,
        reactText: Strings.fork,
        widget: Container(),
      ),
    ];

    ourPetList.value = ourPetRezult;
  }
}
