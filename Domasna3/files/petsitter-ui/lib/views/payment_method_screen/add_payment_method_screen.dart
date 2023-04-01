import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/payment method/add_payment_method_controller.dart';
import '../../utils/custom_color.dart';
import '../../widgets/input/input_field.dart';

class AddPaymentMethodScreen extends StatelessWidget {
   AddPaymentMethodScreen({super.key});
final controller=Get.put(AddPaymentMethodController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.cashMall),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
         vertical: Dimensions.defaultPaddingSize,
         horizontal: Dimensions.defaultPaddingSize),
      child: Column(
        children: [
          _inputWidget(context),
          _addNowButtonWidget(context),
        ],
      ),
    );
  }

  _inputWidget(BuildContext context) {
    return Column(
      children:  [
        InputFieldWidget(
          controller: controller.userNameController,
          hintText: Strings.enterusername,
          labelText: Strings.username,
        ),addVerticalSpace(Dimensions.heightSize),
        InputFieldWidget(
         controller: controller.emailAddressController,
          hintText: Strings.enterEmailAddress,
          labelText: Strings.enterEmail,
        ),
      ],
    );
  }

  _addNowButtonWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize),
      child: PrimaryButtonWidget(
        text: Strings.addNow,
        onPressed: () {
        controller.onPressedAddButton();
        },
      ),
    );
  }
}
