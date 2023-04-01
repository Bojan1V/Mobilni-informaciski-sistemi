import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/size.dart';

import '../../controller/auth/sign_up_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class PhoneNumberWithCountryCodeInput extends StatelessWidget {
  const PhoneNumberWithCountryCodeInput({
    Key? key,
    required this.controller,
    required this.hintText,
    this.focusedBorderWidth = 2,
    this.enabledBorderWidth = 2,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final double focusedBorderWidth;
  final double enabledBorderWidth;

  @override
  Widget build(BuildContext context) {
    final signUpController = Get.put(SignUpController());
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: Dimensions.heightSize * 0.5),
          height: Dimensions.inputBoxHeight * 1.1,
          child: TextFormField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.left,
            controller: controller,
            style: CustomStyle.inputTextStyle,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
                borderSide: BorderSide(
                    color: CustomColor.borderColor, width: enabledBorderWidth),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.7),
                borderSide: BorderSide(
                    color: CustomColor.borderColor, width: focusedBorderWidth),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              hintText: hintText,
              hintStyle: CustomStyle.inputTextStyle,
              alignLabelWithHint: true,
              contentPadding: const EdgeInsets.only(left: 2, top: 15),
              prefixIcon: Obx(() {
                return SizedBox(
                  width: Dimensions.widthSize * 6.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          style: CustomStyle.inputTextStyle,
                          keyboardType: TextInputType.number,
                          cursorColor: CustomColor.primaryColor,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                              hintText: signUpController.countryCode.value,
                              hintStyle: CustomStyle.inputTextStyle),
                        ),
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                            color:
                                CustomColor.primaryTextColor.withOpacity(0.5)),
                      ),
                      addHorizontalSpace(Dimensions.widthSize * 0.3),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
