import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';

import '../../routes/routes.dart';

class SelectPetWidget extends StatelessWidget {
  const SelectPetWidget({super.key, required this.img, required this.text, this.color});

  final String img,text;
  final Color? color;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Get.toNamed(Routes.myPetsInfoScreen);
      },
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color:color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.borderRadius),
                  topRight: Radius.circular(Dimensions.borderRadius),
                ),
              ),
              child: Image.asset(img),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Dimensions.borderRadius),
                  bottomRight: Radius.circular(Dimensions.borderRadius),
                ),
              ),
              child: Text(
                text,
                style: CustomStyle.defaultTitleTextStyle,
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
