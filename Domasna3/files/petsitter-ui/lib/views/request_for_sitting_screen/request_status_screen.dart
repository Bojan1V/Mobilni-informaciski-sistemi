import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/others/custom_slider_widget.dart';

import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../widgets/button/back_button.dart';

class RequestStatusScreen extends StatelessWidget {
  const RequestStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: _customAppbar(context),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric( horizontal: Dimensions.defaultPaddingSize),
      child: ListView(
        children: [
          addVerticalSpace(Dimensions.heightSize),
          Text(
            Strings.checkTheCurrent,
            style: CustomStyle.requestCheckTextStyle,
          ),
          _customSliderWidget(context),
          _locationDetails(context),
          const Divider(
            color: CustomColor.secondaryTextColor,
            thickness: 1,
          ),
          _petInforWidget(context),
          _cancelButtonWidget(context),
        ],
      ),
    );
  }

  _customSliderWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize),
      child: CustomSliderWidget(value: 75, text: Strings.waitForApproval),
    );
  }

  _locationDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimensions.defaultPaddingSize * 0.3,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                Assets.dogSetting,
                // ignore: deprecated_member_use
                color: CustomColor.secondaryTextColor,
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.7),
              Text(
                Strings.dogSitting,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize * 1.5),
          Row(
            children: [
              SvgPicture.asset(Assets.calender),
              addHorizontalSpace(Dimensions.widthSize * 1.7),
              Text(
                Strings.onepetsdate,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize * 1.5),
          Row(
            children: [
              SvgPicture.asset(
                Assets.location,
                // ignore: deprecated_member_use
                color: CustomColor.secondaryTextColor,
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.7),
              Text(
                Strings.location2,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize * 1.5),
          Row(
            children: [
              SvgPicture.asset(
                Assets.clock,
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.7),
              Text(
                Strings.times,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize * 1.5),
        ],
      ),
    );
  }

  _petInforWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimensions.defaultPaddingSize * 0.3,
      ),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          addVerticalSpace(Dimensions.heightSize),
          Text(
            Strings.petsInfo,
            style: CustomStyle.requestSittingTextTitle,
          ),
          addVerticalSpace(Dimensions.heightSize),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  image: const DecorationImage(
                      image: AssetImage(Assets.minidog), fit: BoxFit.cover),
                ),
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.4),
              Column(
                crossAxisAlignment: crossStart,
                children: [
                  Row(
                    children: [
                      Text(
                        Strings.name,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                      Text(
                        Strings.grigioCham,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        Strings.breed,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                      Text(
                        Strings.abyssinian,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        Strings.age,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                      Text(
                        Strings.onetoyear,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        Strings.weight,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                      Text(
                        Strings.onefivekg,
                        style: CustomStyle.previewSubtitleTextStyle,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  _cancelButtonWidget(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 2),
        child: PrimaryButtonWidget(
          backgroundColor: const Color(0xffEB4462),
          text: Strings.cancelRequest,
          onPressed: () {
        Get.toNamed(Routes.bottomNavBar);
          },
        ));
  }
  
  _customAppbar(BuildContext context) {
    return AppBar(
      leading:
        InkWell (
          onTap: (){
            Get.toNamed(Routes.bottomNavBar);
          },
          child: BackButtonWidget()) ,
      title:Text(Strings.requestStatus, style: GoogleFonts.poppins(
          color: CustomColor.primaryTextColor,
          fontSize: Dimensions.defaultTextSize,
          fontWeight: FontWeight.w600,
        ),),
      elevation: 2,
      backgroundColor: CustomColor.screenBGColor,
     
    );
  }
}
