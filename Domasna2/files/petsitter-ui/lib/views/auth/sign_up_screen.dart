import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/password_inputs.dart';
import 'package:petsitter/widgets/others/app_logo_widget.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import '../../controller/auth/sign_up_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';
import '../../widgets/input/country_picker_widget.dart';
import '../../widgets/input/input_field.dart';
import '../../widgets/input/phone_number_country_code.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final SignUpController controller = Get.put(SignUpController());
  final signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: _appbarWidget(context),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _appLogo(context),
          _signUpWidget(context),
        ],
      ),
    );
  }

  _appbarWidget(BuildContext context) {
    return CustomAppBar(
      title: Strings.signUP,
      actions: [
        Padding(
          padding: EdgeInsets.only(
              top: Dimensions.defaultPaddingSize * 0.6,
              right: Dimensions.defaultPaddingSize*0.7),
          child: InkWell(
            onTap: () {
              controller.onPressedSignInText();
            },
            child: Text(
              Strings.signIn,
              style: CustomStyle.appbarActionTextStyle,
            ),
          ),
        )
      ],
    );
  }

  _appLogo(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize * 1.5),
      child: AppLogoWidget(
        height: Dimensions.heightSize * 6,
        width: MediaQuery.of(context).size.width * 0.7,
      ),
    );
  }

  _signUpWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      height: MediaQuery.of(context).size.height * 1.2,
      decoration:  BoxDecoration(
      color: CustomColor.secondearyColor,
          borderRadius: BorderRadius.only(
        topRight: Radius.elliptical(350, 150),
        topLeft: Radius.elliptical(350, 150),
      )),
      child: Column(
        children: [
          _createAccountTextWidget(context),
          _inputWidget(context),
          _signUpButtonAndTextWidget(context),
          _orWidget(context),
          _socialMediaWidget(context)
        ],
      ),
    );
  }

  _createAccountTextWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: Dimensions.marginSize * 3.3,
          bottom: Dimensions.marginSize * 2.2),
      child: Column(
        children: [
          Text(Strings.createAccount, style: CustomStyle.welcomeTextStyle),
          Text(Strings.weAreHappy, style: CustomStyle.inputTextStyle),
        ],
      ),
    );
  }

  _inputWidget(BuildContext context) {
    return Form(
      key: signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InputFieldWidget(
                  hintText: Strings.fistName,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.firstNameController,
                ),
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.4),
              Expanded(
                child: InputFieldWidget(
                  hintText: Strings.lasttName,
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.lastNameController,
                ),
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize * 1.2),
          InputFieldWidget(
            hintText: Strings.enterUsername,
            keyboardType: TextInputType.emailAddress,
            controller: controller.userNameController,
          ),
          addVerticalSpace(Dimensions.heightSize * 1.2),
          InputFieldWidget(
            hintText: Strings.enterEmail,
            keyboardType: TextInputType.visiblePassword,
            controller: controller.emailController,
          ),
          addVerticalSpace(Dimensions.heightSize * 1.2),
          SignUpCountryCodePickerWidget(
            hintText: Strings.selectCountry,
            controller: controller.countryCodeController,
          ),
          PhoneNumberWithCountryCodeInput(
            hintText: Strings.enterPhoneNumber,
            controller: controller.phoneNumberController,
          ),
          PasswordInputWidget(
            hintText: Strings.enterNewPassword,
            keyboardType: TextInputType.visiblePassword,
            controller: controller.newPasswordController,
          ),
          PasswordInputWidget(
            hintText: Strings.enterConfirmPassword,
            keyboardType: TextInputType.visiblePassword,
            controller: controller.confirmPasswordController,
          ),
          addVerticalSpace(Dimensions.heightSize * 3.3)
        ],
      ),
    );
  }

  _signUpButtonAndTextWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: crossCenter,
      children: [
        PrimaryButtonWidget(
            text: Strings.signUP,
            onPressed: () {
              controller.onPressedSignUPButton();
            }),
        addVerticalSpace(Dimensions.heightSize),
        Text(
          Strings.byClickOnSignUP,
          textAlign: TextAlign.center,
          style: CustomStyle.subTitleTextStyle,
        )
      ],
    );
  }

  _orWidget(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize * 1.2),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          Row(
            children: [
              customDivider(context),
              addHorizontalSpace(Dimensions.widthSize / 2),
              Text(Strings.or, style: CustomStyle.inputTextStyle),
              addHorizontalSpace(Dimensions.widthSize / 2),
              customDivider(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget customDivider(BuildContext context) {
    return Expanded(
      child: Container(
        height: 1,
        width: MediaQuery.of(context).size.width,
        color: CustomColor.secondaryTextColor.withOpacity(0.20),
      ),
    );
  }

  _socialMediaWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialMediaButtonWidget(asset: Assets.google, onTap: () {}),
        _socialMediaButtonWidget(asset: Assets.facebook, onTap: () {}),
        _socialMediaButtonWidget(asset: Assets.twitter, onTap: () {}),
      ],
    );
  }

  _socialMediaButtonWidget(
      {required VoidCallback onTap, required String asset}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.widthSize * 0.6),
      child: InkWell(onTap: onTap, child: SvgPicture.asset(asset)),
    );
  }
}
