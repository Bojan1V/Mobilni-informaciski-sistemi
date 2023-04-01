import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/input_field.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/auth/forget_password_controller.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  final controller = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(
        
        title: Strings.forgetPassword),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      children: [
        _emailImgWidget(context),
        _titleSubTitleTextWidget(context),
         _inputWidget(context),
        _submitButtonWidget(context),
      ],
    );
  }


  _emailImgWidget(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: Dimensions.marginSize * 3.5),
        child: SvgPicture.asset(Assets.email));
  }


  _titleSubTitleTextWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize*1.8),
      child: Column(
        children: [
          Text(
            Strings.forgetPassword,
            textAlign: TextAlign.center,
            style: CustomStyle.titleTextStyle,
          ),
          Text(
            Strings.plzEnterYourRegisterEmail,
            textAlign: TextAlign.center,
            style: CustomStyle.subTitleTextStyle,
          ),
        ],
      ),
    );
  }


  _inputWidget(BuildContext context) {
    return InputFieldWidget(
       
        controller: controller.emailController,
        hintText: Strings.enterEmail,
         widget:Padding(
             padding:  EdgeInsets.only(
              left:Dimensions.defaultPaddingSize,
              top:Dimensions.defaultPaddingSize*0.2,
              bottom:Dimensions.defaultPaddingSize*0.2,
              ),
            child: CircleAvatar(
              radius: 8,
              backgroundColor: CustomColor.primaryColor,
              child: Center(
                child: Icon(Icons.check,color: CustomColor.whiteColor,size:Dimensions.heightSize,
                       
                ),
              ),
            ),
          ) ,
        );
  }


  _submitButtonWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.defaultPaddingSize*1.4),
      child: Column(
        children: [
          PrimaryButtonWidget(
            text: Strings.submit,
            onPressed: () {
             controller.onPressedSubmit();
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
                )),
          )
        ],
      ),
    );
  }
}
