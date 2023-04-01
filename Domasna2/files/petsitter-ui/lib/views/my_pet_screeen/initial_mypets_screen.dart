import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/my_pet/my_pet_info_controller.dart';

class InitialMyPetsScreen extends StatelessWidget {
  InitialMyPetsScreen({super.key});
  final controller = Get.put(MyPetsInfoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: _customAppbar(context),
      body: _bodyWidget(context),
    );
  }

  _customAppbar(BuildContext context) {
    return CustomAppBar(
      title: Strings.myPets,
      actions: [
        Padding(
          padding: EdgeInsets.only(
              right: Dimensions.defaultPaddingSize,
              top: Dimensions.defaultPaddingSize * 0.6),
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.bottomNavBar);
            },
            child: Text(
              Strings.gotoMenu,
              style: CustomStyle.appbarActionTextStyle,
            ),
          ),
        )
      ],
    );
  }

  _bodyWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _addPetWidget(context),
        ],
      ),
    );
  }

  _addPetWidget(BuildContext context) {
    return Row(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius),
          ),
          elevation: 5,
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.198,
                width: MediaQuery.of(context).size.height * 0.19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius),
                    topRight: Radius.circular(Dimensions.radius),
                  ),
                  image: const DecorationImage(
                      image: AssetImage(Assets.minidog), fit: BoxFit.cover),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize*0.2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.borderRadius),
                    bottomRight: Radius.circular(Dimensions.borderRadius),
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
        addHorizontalSpace(Dimensions.widthSize * 1.5),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.myPetsInfoScreen);
          },
          child: Card(
            margin: EdgeInsets.all(0),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.borderRadius),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.borderRadius),
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
    );
  }
}
