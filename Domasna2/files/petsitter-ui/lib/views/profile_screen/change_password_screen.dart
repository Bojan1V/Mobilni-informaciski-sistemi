import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/password_inputs.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/change_password_controller.dart';
import '../../utils/custom_color.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});
  final controller = Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.changePassword),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
      child: Column(
        children: [
      _changePasswordWidget(context),
      _changeButtonWidget(context),
        
        ],
      ),
    );
  }
  
  _changePasswordWidget(BuildContext context) {
    return Column(
      children: [
          PasswordInputWidget(
              controller: controller.enterOldPasswordController,
              hintText: Strings.enterOldPassword),
          PasswordInputWidget(
              controller: controller.enterOldPasswordController,
              hintText: Strings.enterOldPassword),
          PasswordInputWidget(
              controller: controller.enterOldPasswordController,
              hintText: Strings.enterOldPassword),
      ],
    );
  }
  
  _changeButtonWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize*2),
      child: PrimaryButtonWidget(text: Strings.changePassword,
       onPressed: (){
        controller.onPressedChangePassword();
       }),
    );
  }
}
