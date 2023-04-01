import 'package:flutter/material.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../data/select_my_pet_data.dart';
import '../../widgets/my_pets/select_pets.dart';

class MyPetsTypeScreen extends StatelessWidget {
  const MyPetsTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.myPetType),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize),
      child: Column(
        mainAxisAlignment: mainCenter,
        mainAxisSize: mainMin,
        children: [
          _textWidget(context),
          _gridViewBuilderWidget(context),
        ],
      ),
    );
  }

  _textWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize),
      child: Text(
        Strings.selectPetType,
        style: CustomStyle.ourPetNameTextStyle,
      ),
    );
  }

  _gridViewBuilderWidget(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        itemCount: petList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1.22,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SelectPetWidget(
            color: CustomColor.colorList[index],
            img: petList[index].img,
            text: petList[index].text,
          );
        },
      ),
    );
  }
}
