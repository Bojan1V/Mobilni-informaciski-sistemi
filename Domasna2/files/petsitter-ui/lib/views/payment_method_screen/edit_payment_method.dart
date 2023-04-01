import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/input_field.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import '../../controller/payment method/edit_payment_method_controller.dart';

class EditPaymentMethodScreen extends StatelessWidget {
   EditPaymentMethodScreen({super.key});
final controller=Get.put(EditPaymentMethodController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
           widget:Padding(
            padding:  EdgeInsets.only(left:Dimensions.defaultPaddingSize*0.7),
             child: CircleAvatar(
              radius: 8,
              backgroundColor: CustomColor.alertColor,
              child:Icon(Icons.close,color: CustomColor.whiteColor,size: Dimensions.heightSize,),
                     ),
           ) ,
          ) ,addVerticalSpace(Dimensions.heightSize),
        
        InputFieldWidget(
         controller: controller.emailAddressController,
          hintText: Strings.enterEmailAddress,
          labelText: Strings.enterEmail,
          widget:Padding(
             padding:  EdgeInsets.only(left:Dimensions.defaultPaddingSize*0.7),
            child: CircleAvatar(
              radius: 8,
              backgroundColor: CustomColor.primaryColor,
              child: Icon(Icons.check,color: CustomColor.whiteColor,size: Dimensions.heightSize,),
            ),
          ) ,
        ),
      ],
    );
  }

  _addNowButtonWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize),
      child: Column(
        children: [
          PrimaryButtonWidget(
            text: Strings.update,
            onPressed: () {
              controller.onPressedUpdate();
            },
          ),addVerticalSpace(Dimensions.heightSize),
           PrimaryButtonWidget(
            backgroundColor: CustomColor.alertColor,
            text: Strings.remove,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
