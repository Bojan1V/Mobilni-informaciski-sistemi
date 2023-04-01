import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/drop_down_widget.dart';

import '../../controller/my_pet/my_pet_info_controller.dart';
import '../../utils/assets.dart';
import '../../widgets/input/drop_down_input.dart';

class MyPetInfoScreen extends StatelessWidget {
  MyPetInfoScreen({super.key});
  final controller = Get.put(MyPetsInfoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        elevation: 0,
        bgColor: CustomColor.transparent,
        title: Strings.myPetInfo,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _imgPickerWidget(context),
          _inputFieldWidget(context),
          _buttonWidget(context),
        ],
      ),
    );
  }

  _imgPickerWidget(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(350, 110),
                bottomRight: Radius.elliptical(350, 110),
              ),
              color: CustomColor.secondearyColor),
        ),
        _imageWidget(context),
      ],
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Obx(() {
      return Container(
        margin: EdgeInsets.only(
            top: Dimensions.marginSize * 4,
            bottom: Dimensions.marginSize * 1.7),
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
        child: Column(
          children: [
            DropDownInputWidget(
              controller: controller.petsNameController,
              hintText: Strings.myPetName,
            ),
            addVerticalSpace(Dimensions.heightSize),
            DropDownInputWidget(
              hintText: controller.petAgeSelectMethod.value,
              widget: CustomDropDown(
                itemsList: controller.petAgeList,
                selectMethod: controller.petAgeSelectMethod,
              ),
            ),
            addVerticalSpace(Dimensions.heightSize),
            DropDownInputWidget(
              hintText: controller.petWeightSelectMethod.value,
              widget: CustomDropDown(
                itemsList: controller.petWeightList,
                selectMethod: controller.petWeightSelectMethod,
              ),
            ),
            addVerticalSpace(Dimensions.heightSize),
            DropDownInputWidget(
              hintText: controller.petBreedSelectMethod.value,
              widget: CustomDropDown(
                itemsList: controller.petBreedList,
                selectMethod: controller.petBreedSelectMethod,
              ),
            ),
          ],
        ),
      );
    });
  }

  _buttonWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: PrimaryButtonWidget(
        text: Strings.saveInfo,
        onPressed: () {
          Get.toNamed(
            Routes.initialMyPetsScreen,
          );
        },
      ),
    );
  }

  _openImageSourceOptions(BuildContext context) {
    showGeneralDialog(
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.6),
        transitionDuration: const Duration(milliseconds: 700),
        context: context,
        pageBuilder: (_, __, ___) {
          return Material(
            type: MaterialType.transparency,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.camera_alt,
                            size: 40.0,
                            color: Colors.blue,
                          ),
                          onTap: () {
                            controller.chooseFromCamera();
                            Navigator.of(context).pop();
                          },
                        ),
                        Text(
                          'from Camera',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Dimensions.smallTextSize),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.photo,
                            size: 40.0,
                            color: Colors.green,
                          ),
                          onTap: () {
                            controller.chooseFromGallery();
                            Navigator.of(context).pop();
                          },
                        ),
                        Text(
                          'From Gallery',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Dimensions.smallTextSize),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        transitionBuilder: (_, anim, __, child) {
          return SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(anim),
            child: child,
          );
        });
  }

  _imageWidget(BuildContext context) {
    return GetBuilder<MyPetsInfoController>(
      assignId: true,
      builder: (logic) {
        return Positioned(
          top: Dimensions.marginSize * 7.5,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                controller.image == null
                    ? CircleAvatar(
                        radius: Dimensions.radius * 7.2,
                        backgroundColor: CustomColor.screenBGColor,
                        child: CircleAvatar(
                          backgroundImage:
                              const AssetImage(Assets.casperManDog),
                          radius: Dimensions.radius * 6.5,
                        ),
                      )
                    : CircleAvatar(
                        radius: Dimensions.radius * 7.2,
                        child: CircleAvatar(
                          radius: Dimensions.radius * 6.5,
                          backgroundImage: FileImage(controller.image!),
                        ),
                      ),
                GestureDetector(
                  child: Center(
                      child: SvgPicture.asset(
                    Assets.camera,
                    height: Dimensions.heightSize * 2,
                  )),
                  onTap: () {
                    _openImageSourceOptions(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
