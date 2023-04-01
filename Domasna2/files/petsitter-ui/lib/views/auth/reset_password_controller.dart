import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/controller/auth/reset_password_controller.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/password_inputs.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../utils/custom_color.dart';


class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final controller = Get.put(ResetPasswordController());
  final passwordFormKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(
         
      
        centerTitle: true,
        alwaysShowBackButton: false,
        title: Strings.resetPassword),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      children: [
        _imageAndTextWidget(context),
         _inputWidget(context),
        _resetButtonWidget(context),
      ],
    );
  }

  _imageAndTextWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: Dimensions.marginSize * 3.5),
          child: SvgPicture.asset(Assets.resetPassword),
        ),
        addVerticalSpace(Dimensions.heightSize * 2),
        Text(
          Strings.resetThePasswordLogin,
          textAlign: TextAlign.center,
          style: CustomStyle.subTitleTextStyle,
        ),
      ],
    );
  }

 _inputWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 1.8),
       child: Form(
        key: passwordFormKey,
         child: Column(
            children: [
               PasswordInputWidget(
                controller:controller.newPasswordController ,
                hintText: Strings.enterNewPassword,
              ),
                PasswordInputWidget(
                  controller: controller.confirmPasswordController,
                  hintText: Strings.enterConfirmPassword,
              ),
            ],
          ),
       ),
      
    );
  }

  _resetButtonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(
          text: Strings.resetPassword2,
          onPressed: () {
           controller.onPressResetPassword();
          },
        ),
        addVerticalSpace(Dimensions.heightSize),
        Center(
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Text(
              Strings.cancel,
              style: CustomStyle.subTitleTextStyle,
            ),
          ),
        )
      ],
    );
  }
}
