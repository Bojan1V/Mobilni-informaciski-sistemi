import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/password_inputs.dart';
import 'package:petsitter/widgets/input/input_field.dart';
import 'package:petsitter/widgets/others/app_logo_widget.dart';
import '../../controller/auth/signin_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../widgets/others/custom_appbar.dart';

class SingInScreen extends StatelessWidget {
  SingInScreen({Key? key}) : super(key: key);
  final controller = Get.put(SingInController());
   final formKey = GlobalKey<FormState>();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: _appbarWidget(context),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        appLogo(context),
        _signInwidget(context),
      ],
    );
  }

  appLogo(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize * 1.5),
      child: AppLogoWidget(
        height: Dimensions.heightSize * 6,
        width: MediaQuery.of(context).size.width * 0.7,
      ),
    );
  }

  _signInwidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      height: MediaQuery.of(context).size.height * 0.73,
      decoration: BoxDecoration(
        color: CustomColor.secondearyColor,
          borderRadius: BorderRadius.only(
        topRight: Radius.elliptical(350, 150),
        topLeft: Radius.elliptical(350, 150),
      )),
      child: Column(
        children: [
          _welcomeTextWidget(context),
          _loginInputWidget(context),
          _signInButtonWidget(context),
          _forgetTextButton(context),
          _orWidget(context),
          _socialMediaWidget(context),
        ],
      ),
    );
  }

  _welcomeTextWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize),
      padding: EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize),
      child: Column(
        children: [
          Text(Strings.welcomeBack, style: CustomStyle.welcomeTextStyle),
          Text(Strings.weAreHappy, style: CustomStyle.inputTextStyle),
        ],
      ),
    );
  }

  _loginInputWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          InputFieldWidget(
            hintText: Strings.enterEmail,
            controller: controller.emailController,
          ),
          PasswordInputWidget(
            controller: controller.passwordController,
            hintText: Strings.enterPassword,
          ),
        ],
      ),
    );
  }

  _signInButtonWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: Dimensions.defaultPaddingSize * 1.5,
          bottom: Dimensions.marginSize * 0.6),
      child: Column(
        children: [
          PrimaryButtonWidget(
              text: Strings.signIn,
              onPressed: () {
                controller.onPressedSignIN();
              }),
        ],
      ),
    );
  }

  _appbarWidget(BuildContext context) {
    return CustomAppBar(
      title: Strings.signIn,
      actions: [
        InkWell(
          onTap: () {
            controller.onPressedSignUp();
          },
          child: Padding(
            padding: EdgeInsets.only(
                top: Dimensions.defaultPaddingSize * 0.6,
                right: Dimensions.defaultPaddingSize*0.7),
            child: Text(
              Strings.signUP,
              style: CustomStyle.appbarActionTextStyle,
            ),
          ),
        )
      ],
    );
  }
}

_forgetTextButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      _openDialogue(context);
    },
    child: Text(
      Strings.forgetPassword,
      style: CustomStyle.subTitleTextStyle,
    ),
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

_socialMediaButtonWidget({required VoidCallback onTap, required String asset}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: Dimensions.widthSize * 0.6),
    child: InkWell(onTap: onTap, child: SvgPicture.asset(asset)),
  );
}

_openDialogue(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      backgroundColor: CustomColor.whiteColor,
      alignment: Alignment.center,
      insetPadding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.4),
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Builder(
        builder: (context) {
          var width = MediaQuery.of(context).size.width;
          return Container(
            width: width * 0.9,
            height: MediaQuery.of(context).size.height*0.51,
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.4),
            child: Column(
              mainAxisAlignment: mainCenter,
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: Dimensions.marginSize * 0.5,
                        right: Dimensions.marginSize * 0.5),
                    alignment: Alignment.topRight,
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(Assets.cross))),
                SvgPicture.asset(Assets.incorrectPassword),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: Dimensions.defaultPaddingSize * 0.7),
                  child: Column(
                    mainAxisAlignment: mainCenter,
                    children: [
                      Text(
                        Strings.incorrectPassword,
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
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Dimensions.marginSize * 1,
                    bottom: Dimensions.marginSize * 0.3,
                    left: Dimensions.defaultPaddingSize * 1.6,
                    right: Dimensions.defaultPaddingSize * 1.6,
                  ),
                  child: PrimaryButtonWidget(
                    text: Strings.okey,
                    onPressed: () {
                      Get.toNamed(Routes.forgetPasswordScreen);
                    },
                  ),
                ),
                Text(
                  Strings.forgetPassword,
                  style: CustomStyle.inputTextStyle,
                ),
                addVerticalSpace(Dimensions.heightSize * 0.3),
              ],
            ),
          );
        },
      ),
    ),
  );
}
