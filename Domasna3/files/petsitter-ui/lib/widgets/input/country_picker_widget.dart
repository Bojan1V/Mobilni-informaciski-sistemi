import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/auth/sign_up_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class SignUpCountryCodePickerWidget extends StatelessWidget {
  const SignUpCountryCodePickerWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
    this.onChanged,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final ValueChanged? onChanged;

  // static String? countryName =;

  @override
  Widget build(BuildContext context) {
    final signUpController = Get.put(SignUpController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: Dimensions.heightSize * 0.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius*0.7),
            border: Border.all(
              color: CustomColor.borderColor,
              width: 2,
            ),
          ),
          width: double.infinity,
          height: Dimensions.inputBoxHeight*1.1,
          child: CountryCodePicker(
            padding: EdgeInsets.zero,
            textStyle:  CustomStyle.inputTextStyle,
            onChanged: (value) {
              controller.text = value.name!;
              signUpController.countryCode.value = value.dialCode.toString();
            },
            // onChanged: onChanged,
            showOnlyCountryWhenClosed: true,
            showDropDownButton: true,
            // initialSelection: f,
            // initialSelection: controller.text,
            backgroundColor: Colors.transparent,
            alignLeft: true,
            // onInit: (code) => {profileController.countryController.text = code?.name},
          ),
        ),
        addVerticalSpace(Dimensions.heightSize)
      ],
    );
  }
}