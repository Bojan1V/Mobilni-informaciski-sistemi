import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import '../controller/my_pet/our_pet_screen_controller.dart';
import '../utils/size.dart';

class OurPetWidget extends StatelessWidget {
  final String petimg, petText, fromText, peopleText, peopleImg, reactText;
  final Widget widget;

  OurPetWidget({
    super.key,
    required this.petimg,
    required this.petText,
    required this.fromText,
    required this.peopleText,
    required this.peopleImg,
    required this.reactText,
    required this.widget,
  });

  final isFavorite = false.obs;

  final controller = Get.put(OutPetsScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
      margin: EdgeInsets.only(top: Dimensions.marginSize * 0.5),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimensions.radius * 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.radius * 1.5),
                    topLeft: Radius.circular(Dimensions.radius * 1.5),
                  ),
                  image: DecorationImage(
                      image: AssetImage(petimg), fit: BoxFit.cover),
                ),
              ),
            ),
            addHorizontalSpace(Dimensions.widthSize),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  addVerticalSpace(Dimensions.heightSize),
                  Row(
                    children: [
                      Text(
                        petText,
                        style: CustomStyle.ourPetNameTextStyle,
                      ),
                      addHorizontalSpace(Dimensions.widthSize * 3),
                      Row(
                        children: [
                          Text(
                            reactText,
                            style: CustomStyle.reactPeopleTextStyle,
                          ),
                          addHorizontalSpace(Dimensions.widthSize * 0.7),
                          widget,
                        ],
                      ),
                    ],
                  ),
                  addVerticalSpace(Dimensions.heightSize * 0.3),
                  Text(
                    fromText,
                    style: CustomStyle.fromTextStyle,
                  ),
                  addVerticalSpace(Dimensions.heightSize),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage(peopleImg),
                      ),
                      addHorizontalSpace(Dimensions.widthSize),
                      Text(
                        peopleText,
                        style: CustomStyle.peopleNameTextStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
