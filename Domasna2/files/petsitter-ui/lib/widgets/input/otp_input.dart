import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';


class OtpInputTextFieldWidget extends StatelessWidget {
  const OtpInputTextFieldWidget({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;



  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: controller,
      appContext: context,
      length: 6,
      obscureText: false,
      keyboardType: TextInputType.number,
      textStyle: const TextStyle(color: CustomColor.primaryTextColor),
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(Dimensions.radius),
        selectedColor: CustomColor.primaryColor,
        activeColor: CustomColor.primaryColor,
        inactiveColor: CustomColor.primaryColor,
        fieldHeight: 52,
        fieldWidth: 48,
        activeFillColor: CustomColor.transparent,
        borderWidth: 1,
       
      ),
      onChanged: (String value) {},
    );
  }
}
