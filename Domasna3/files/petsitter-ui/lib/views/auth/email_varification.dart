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
import 'package:petsitter/widgets/input/otp_input.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/auth/email_varification.dart';

class EmailVarificatonScreen extends StatelessWidget {
  EmailVarificatonScreen({super.key});
  final controller = Get.put(EmailVarificationController());
  final otpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.emailVerification),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      children: [
        _emailImageAndTextWidget(context),
        _timerWidget(context),
        inputWidget(context),
        _submitButtonWidget(context),
      ],
    );
  }

  _emailImageAndTextWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: Dimensions.marginSize * 3.5),
          child: SvgPicture.asset(Assets.otp),
        ),
        addVerticalSpace(Dimensions.heightSize * 2),
        Text(
          Strings.enterTheVerificationCode,
          textAlign: TextAlign.center,
          style: CustomStyle.subTitleTextStyle,
        ),
        addVerticalSpace(Dimensions.heightSize * 2),
      ],
    );
  }

  inputWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 1.8),
      child: OtpInputTextFieldWidget(
        controller: controller.emailVarificationController,
      ),
    );
  }

  _submitButtonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(
          text: Strings.submit,
          onPressed: () {
            controller.onPressEmailVarification();
          },
        ),
        addVerticalSpace(Dimensions.heightSize),
        Obx(() => Visibility(
            visible: controller.enableResend.value,
            child: InkWell(
                onTap: () {
                  controller.resendCode();
                },
                child: Text(
                  Strings.resendCode,
                  style: CustomStyle.subTitleTextStyle,
                ))))
      ],
    );
  }

  _timerWidget(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.access_time_outlined,
            color: CustomColor.primaryColor,
          ),
          SizedBox(width: Dimensions.widthSize * 0.4),
          Text(
            controller.secondsRemaining.value >= 0 &&
                    controller.secondsRemaining.value <= 9
                ? '00:0${controller.secondsRemaining.value}'
                : '00:${controller.secondsRemaining.value}',
            style: CustomStyle.subTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
