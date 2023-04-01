import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/input_field.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/profile_controller/edit_profile_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../widgets/input/country_picker_widget.dart';
import '../../widgets/input/phone_number_country_code.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.editProfile),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: mainCenter,
          crossAxisAlignment: crossCenter,
          children: [
            _imageWidget(context),
            _inputFieldWidget(context),
            _updateButtonWidget(context),
          ],
        ),
      ),
    );
  }

  _imageWidget(BuildContext context) {
    return GetBuilder<EditProfileController>(
      assignId: true,
      builder: (logic) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize),
          child: CircleAvatar(
            radius: Dimensions.radius * 9.5,
            backgroundColor: CustomColor.primaryColor,
            child: CircleAvatar(
              radius: Dimensions.radius * 8.8,
              backgroundImage: const AssetImage(Assets.stylish),
              child: GestureDetector(
                child: Center(
                    child: SvgPicture.asset(
                  Assets.camera,
                  height: Dimensions.heightSize * 3,
                )),
                onTap: () {
                  _openImageSourceOptions(context);
                },
              ),
            ),
          ),
        );
      },
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Row(
          children: [
            Expanded(
              child: InputFieldWidget(
                labelText: Strings.firstName,
                controller: controller.firstNameController,
                hintText: Strings.aderson,
              ),
            ),
            addHorizontalSpace(Dimensions.widthSize * 2),
            Expanded(
              child: InputFieldWidget(
                  labelText: Strings.lastName,
                  controller: controller.lastNameController,
                  hintText: Strings.builp),
            ),
          ],
        ),
        addVerticalSpace(Dimensions.heightSize),
        InputFieldWidget(
          labelText: Strings.email,
          controller: controller.emailController,
          hintText: Strings.adersonbuilpgmail,
        ),
         addVerticalSpace(Dimensions.heightSize),
         Text(Strings.country,style: CustomStyle.requestSittingTextTitle,),
         SignUpCountryCodePickerWidget(
            
            hintText: Strings.selectCountry,
            controller: controller.countryCodeController,
          ),
           addVerticalSpace(Dimensions.heightSize),
            Text(Strings.phoneNumber,style: CustomStyle.requestSittingTextTitle,),
          PhoneNumberWithCountryCodeInput(
            
            hintText: Strings.enterPhoneNumber,
            controller: controller.phoneNumberController,
          ),
      ],
    );
  }

  _updateButtonWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 2),
      child: PrimaryButtonWidget(
        text: Strings.update,
        onPressed: () {
          controller.onPressedUpdate();
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
}
