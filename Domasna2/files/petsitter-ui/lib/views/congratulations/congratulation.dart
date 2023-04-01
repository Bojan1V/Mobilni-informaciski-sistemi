import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import '../../../utils/custom_color.dart';
import '../../../utils/custom_style.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/size.dart';
import '../../../utils/strings.dart';
import '../../controller/auth/signin_controller.dart';
import '../../widgets/button/primary_button.dart';

class CongratulationScreen extends StatelessWidget {
   CongratulationScreen({Key? key}) : super(key: key);
  final congratulationData = Get.arguments;
  final controller=Get.put(SingInController());
 
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
        _okayButtonWidget(context)
      ],
    );
  }

  _congratulationImg(BuildContext context) {
      
      final isCongratulation = congratulationData["isCongratulation"];
    return SvgPicture.asset(
     isCongratulation==true?Assets.right:Assets.wrong,
      height: MediaQuery.of(context).size.height*0.19,
      width: MediaQuery.of(context).size.height*0.19,
      
    );
  }

  _titleWidget(BuildContext context) {
    
     final subtitle = congratulationData["subtitle"];
      final isCongratulation = congratulationData["isCongratulation"];
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 1.7),
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize * 0.6),
      child: Column(
        children: [
          Text(
              isCongratulation==true?Strings.congratulations:Strings.opps,
            textAlign: TextAlign.center,
            style: CustomStyle.titleTextStyle,
          ),
          addVerticalSpace(Dimensions.heightSize * 0.7),
          Text(
           subtitle,
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
      child: PrimaryButtonWidget(
        text: Strings.okey,
        onPressed: () {
       controller.onPressedOkay();
        },
      ),
    );
  }


}
