import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';

import '../../controller/welcome_controller.dart';
import '../../widgets/button/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  final controller = Get.put(WelcomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Column(
      children: [
        _imageWidget(context),
        _textWidget(context),
        _signInsignUpButtonWidget(context),
      ],
    );
  }

  _imageWidget(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          // clipper:MyCustomClipper() ,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(350, 110),
                bottomRight: Radius.elliptical(350, 110),
              ),
              color: CustomColor.secondearyColor,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.15,
          left: MediaQuery.of(context).size.height * 0.05,
          child: Padding(
            padding: EdgeInsets.only(bottom: Dimensions.marginSize),
            child: Image.asset(
              Assets.welcomepet,
              height: MediaQuery.of(context).size.height * 0.34,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  _textWidget(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[Color(0xff01BD70), Color(0xff8FCF4F)],
    ).createShader(const Rect.fromLTWH(200.0, 0.0, 40, 0.0));
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.defaultPaddingSize * 4,
          bottom: Dimensions.defaultPaddingSize),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: "Welcome To ",
              style: CustomStyle.welcomeTextStyle,
              children: [
                TextSpan(
                  text: "Woof-Meow",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Dimensions.extraLargeTextSize * 1.1,
                      foreground: Paint()..shader = linearGradient),
                ),
              ],
            ),
          ),
          Text(
            Strings.weAreHappy,
            textAlign: TextAlign.center,
            style: CustomStyle.welcomeSubTitleTextStyle,
          )
        ],
      ),
    );
  }

  _signInsignUpButtonWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: Column(
        children: [
          PrimaryButtonWidget(
            text: Strings.signIn,
            onPressed: () {
              controller.onPressedSignIn();
            },
          ),
          addVerticalSpace(Dimensions.heightSize * 1.3),
          PrimaryButtonWidget(
            text: Strings.signUP,
            borderColor: CustomColor.primaryColor,
            backgroundColor: CustomColor.transparent,
            textColor: CustomColor.primaryColor,
            onPressed: () {
              controller.onPressedSignUp();
            },
          ),
        ],
      ),
    );
  }
}
// class MyCustomClipper extends CustomClipper<Path> {
//   final double borderRadius = 15;
//   @override
//   Path getClip(Size size) {
   
//     final path = Path();
//       path.lineTo(0.0, size.height - 20);
  
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
// }
