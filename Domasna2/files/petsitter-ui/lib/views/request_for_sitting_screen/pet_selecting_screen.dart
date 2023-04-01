import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/custom_slider_widget.dart';

import '../../controller/request_for_sitting/pet_selecting_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class PetSelectingScreen extends StatelessWidget {
  PetSelectingScreen({
    super.key,
    this.isSelected,
  });
  final controller = Get.put(PetsSelectingController());
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(
        title: Strings.requestForSitting,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize * 0.8),
      child: Column(
        children: [
          _textWidget(context),
          _addPetWidget(context),
          _continueButtonWidget(context),
          _sliderWidget(context),
        ],
      ),
    );
  }

  _textWidget(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize * 0.5),
      child: Center(
        child: Text(Strings.selectYourPets,
            textAlign: TextAlign.center,
            style: CustomStyle.notificationTitleTextStyle),
      ),
    );
  }

  _addPetWidget(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Obx(
              () => InkWell(
                onTap: () {
                  controller.changeStatus();
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.height * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius),
                            topRight: Radius.circular(Dimensions.radius),
                          ),
                          image: const DecorationImage(
                              image: AssetImage(Assets.minidog),
                              fit: BoxFit.cover),
                        ),
                        child: Visibility(
                          visible: controller.isvisibility.value == true
                              ? true
                              : false,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                CustomColor.primaryTextColor.withOpacity(0.5),
                            child: const Icon(
                              Icons.check,
                              color: CustomColor.whiteColor,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft:
                                Radius.circular(Dimensions.borderRadius),
                            bottomRight:
                                Radius.circular(Dimensions.borderRadius),
                          ),
                        ),
                        child: Text(
                          Strings.grigioCham,
                          style: CustomStyle.defaultTitleTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            addHorizontalSpace(Dimensions.widthSize),
            GestureDetector(
              onTap: () {
                controller.onPressedAddAnotherPet();
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Dimensions.borderRadius),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimensions.borderRadius),
                    color: Colors.black.withOpacity(0.7),
                    image: const DecorationImage(
                      image: AssetImage(Assets.addMore),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 0,
                        sigmaY: 0,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.15,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.defaultPaddingSize * 0.7,
                          vertical: Dimensions.defaultPaddingSize * 0.7,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xff000000).withOpacity(0.6),
                              const Color(0xff000000).withOpacity(0.6),
                            ],
                          ),
                        ),
                        child: Text(
                          Strings.addAnotherPet,
                          textAlign: TextAlign.center,
                          style: CustomStyle.addMorePetTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _continueButtonWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Dimensions.defaultPaddingSize * 5,
        bottom: Dimensions.defaultPaddingSize * 2,
      ),
      child: PrimaryButtonWidget(
        text: Strings.continues,
        onPressed: () {
          controller.onPressedContinue();
        },
      ),
    );
  }

  _sliderWidget(BuildContext context) {
    return CustomSliderWidget(value: 15, text: Strings.selectYourPets);
  }
}


//
//
//
//Obx(
    //         () => SelectFoodCardWidget(
    //           img: interestList[index].img,
    //           title: interestList[index].title,
    //           isSelected: controller.selectValue.value == index ? true : false,
    //           onTap: () {
    //             controller.selectValue.value = index;
    //             controller.listIndex.value = index;
    //             controller.interestFoodName.value = interestList[index].title;
    //             controller.interestFoodImage.value = interestList[index].img;
    //           },
    //         ),
    //       );
    //     }),
    //   ),
    // );