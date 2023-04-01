import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/my_pet/default_pet_controller.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class DefaultMyPetScreen extends StatelessWidget {
   DefaultMyPetScreen({super.key});
   final controller =Get.put(DefaultMyPetsScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      extendBodyBehindAppBar: true,
      appBar: _appbarWidget(context),
      body: _bodyWidget(context),
    );
  }

  _appbarWidget(BuildContext context) {
    return CustomAppBar(
      bgColor: CustomColor.transparent,
      title: Strings.myPets,
      actions: [
        InkWell(
          onTap: () {
           controller.onPressedSkip();
          },
          child: Padding(
            padding: EdgeInsets.only(
                top: Dimensions.defaultPaddingSize * 0.6,
                right: Dimensions.defaultPaddingSize*0.6),
            child: Text(
              Strings.skip,
              style: CustomStyle.appbarActionTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  _bodyWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _imgWidget(context),
          _textWidget(context),
          _addYourPet(context),
        ],
      ),
    );
  }

  _imgWidget(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration:  BoxDecoration(
           borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical( 300,150),
                  bottomRight: Radius.elliptical(300,150),
                ),
                
          image: DecorationImage(
              image: AssetImage(Assets.dogs), fit: BoxFit.fill),
        ));
  }

  _textWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: Dimensions.marginSize * 1.9,
          horizontal: Dimensions.marginSize * 0.9),
      child: Column(
        mainAxisAlignment: mainCenter,
        children: [
          Text(
            Strings.yourPetWillbe,
            style: CustomStyle.subTitleTextStyle,
          ),
          addVerticalSpace(Dimensions.heightSize * 1.6),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.defaultPaddingSize*0.4),
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.grey,
                    ),
                    addHorizontalSpace(Dimensions.widthSize * 0.4),
                    Text(
                      Strings.recordVaccinations,
                      style: CustomStyle.subTitleTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.grey,
                    ),
                    addHorizontalSpace(Dimensions.widthSize * 0.4),
                    Text(
                      Strings.reminderOnNext,
                      style: CustomStyle.subTitleTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.grey,
                    ),
                    addHorizontalSpace(Dimensions.widthSize * 0.4),
                    Text(
                      Strings.healthyPetWalk,
                      style: CustomStyle.subTitleTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.grey,
                    ),
                    addHorizontalSpace(Dimensions.widthSize * 0.4),
                    Text(
                      Strings.getPetHOme,
                      style: CustomStyle.subTitleTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.grey,
                    ),
                    addHorizontalSpace(Dimensions.widthSize * 0.4),
                    Text(
                      Strings.andMore,
                      style: CustomStyle.subTitleTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _addYourPet(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: Dimensions.defaultPaddingSize,
        left: Dimensions.defaultPaddingSize,
        bottom: Dimensions.defaultPaddingSize,
      ),
      child: PrimaryButtonWidget(
        text: Strings.addYourPet,
        onPressed: () {
          controller.onPressedAddPet();
        },
      ),
    );
  }
}
