import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/strings.dart';

import '../../controller/request_for_sitting/wait_approval_controller.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';
import '../../widgets/button/primary_button.dart';

class WaitForApprovalScreen extends StatelessWidget {
   WaitForApprovalScreen({super.key});
  final controller=Get.put(WaitApprovalController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainCenter,
    
      children: [
        _congratulationImg(context),
        _titleWidget(context),
        _okayButtonWidget(context),
      ],
    );
  }

  _congratulationImg(BuildContext context) {
    return SvgPicture.asset(
      Assets.warn,
      height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width*0.2,
     
    );
  }

  _titleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 1.7),
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize * 0.6),
      child: Column(
        children: [
          Text(
            Strings.waitForApproval,
            textAlign: TextAlign.center,
            style: CustomStyle.titleTextStyle,
          ),
          addVerticalSpace(Dimensions.heightSize * 0.7),
          Text(
            Strings.waitForYourSitting,
            textAlign: TextAlign.center,
            style: CustomStyle.subTitleTextStyle,
          ),
        ],
      ),
    );
  }

  _okayButtonWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimensions.marginSize * 1.3,
      ),
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          PrimaryButtonWidget(
            text: Strings.okey,
            onPressed: () {
              controller.onPressedOkay();
            },
          ),
          addVerticalSpace(Dimensions.heightSize),
          InkWell(
              onTap: () {
                controller.onPressedTrackYour();
              },
              child: Text(
                Strings.trackYourRequest,
                style: CustomStyle.subTitleTextStyle,
              ))
        ],
      ),
    );
  }
}
