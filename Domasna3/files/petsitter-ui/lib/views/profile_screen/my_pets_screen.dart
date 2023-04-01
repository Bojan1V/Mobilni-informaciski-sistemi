import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/my_pets/my_pets_widget.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class MyPetsScreen extends StatelessWidget {
  const MyPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.myPets),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.defaultPaddingSize,
        vertical: Dimensions.defaultPaddingSize,
      ),
      child: Wrap(
        children: [
          const MyPetsWidget(
            img: Assets.minidog,
            text: Strings.grigioCham,
          ),
          const MyPetsWidget(
            img: Assets.minidog,
            text: Strings.grigioCham,
          ),
          const MyPetsWidget(
            img: Assets.minidog,
            text: Strings.grigioCham,
          ),
          const MyPetsWidget(
            img: Assets.minidog,
            text: Strings.grigioCham,
          ),
          const MyPetsWidget(
            img: Assets.minidog,
            text: Strings.grigioCham,
          ),

          //
          Card(
            elevation: 5,
            margin: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.borderRadius),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.38,
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
        ],
      ),
    );
  }
}
