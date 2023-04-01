import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/my_pet/my_pet_info_controller.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';


class AddPetWidget extends StatelessWidget {
   AddPetWidget({super.key, required this.img, required this.nameText});
   final File img;
final String nameText;
final controller = Get.put(MyPetsInfoController());
  @override
  Widget build(BuildContext context) {
    return  Card(
    
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius),
          ),
          elevation: 5,
          margin:EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                 height: MediaQuery.of(context).size.height * 0.19,
                width: MediaQuery.of(context).size.width * 0.429,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius),
                    topRight: Radius.circular(Dimensions.radius),
                  ),
                  image:  DecorationImage(
                    
                      image: FileImage(img), fit: BoxFit.cover),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: Dimensions.defaultPaddingSize*0.15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.borderRadius),
                    bottomRight: Radius.circular(Dimensions.borderRadius),
                  ),
                ),
                child: Text(
                 nameText,
                  style: CustomStyle.defaultTitleTextStyle,
                ),
              ),
            ],
          ),
        );
  }
}