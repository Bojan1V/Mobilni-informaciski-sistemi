// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/custom_slider_widget.dart';

import '../../controller/request_for_sitting/preview_controller.dart';
import '../../utils/custom_style.dart';

class PreviewScreen extends StatelessWidget {
  PreviewScreen({super.key});

  final controller = Get.put(PreviewController());

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 13,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.preview),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _imgMapWidget(context),
        _detailsWidget(context),
      ],
    );
  }

  _imgMapWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: GoogleMap(
        initialCameraPosition: _kGooglePlex,
      ),
    );
  }

  _detailsWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.defaultPaddingSize * 0.8,
      ),
      child: Column(
        children: [
          _locationDetails(context),
          const Divider(
            color: CustomColor.secondaryTextColor,
            thickness: 1,
          ),
          _petInforWidget(context),
          const Divider(
            color: CustomColor.secondaryTextColor,
            thickness: 1,
          ),
          _sittingChargeWidget(context),
          const Divider(
            color: CustomColor.secondaryTextColor,
            thickness: 1,
          ),
          _paymentMethodWidget(context),
          _continueButtonWidget(context),
          _customSliderWidget(context),
        ],
      ),
    );
  }

  _locationDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimensions.defaultPaddingSize * 0.3,
        top: Dimensions.defaultPaddingSize * 1.2,
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
      child: Column(crossAxisAlignment: crossStart, children: [
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
        addVerticalSpace(Dimensions.heightSize * 2),
      ]),
    );
  }

  _sittingChargeWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.defaultPaddingSize * 0.3,
      ),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          addVerticalSpace(Dimensions.heightSize),
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Text(
                Strings.sittingCharge,
                style: CustomStyle.requestSittingTextTitle,
              ),
              Text(
                Strings.viewOurCharges,
                style: CustomStyle.appbarActionTextStyle,
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize * 2),
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Text(
                Strings.sittingCharge,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
              Text(
                Strings.uSD,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Text(
                Strings.breedCharge,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
              Text(
                Strings.uSDbreed,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Text(
                Strings.travellingCharges,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
              Text(
                Strings.uSDbreed,
                style: CustomStyle.previewSubtitleTextStyle,
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize),
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Text(
                Strings.travellingCharges,
                style: CustomStyle.previewTotalTextStyle,
              ),
              Text(
                Strings.uSDbreed,
                style: CustomStyle.previewTotalTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _paymentMethodWidget(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize * 0.3),
      child: Column(
        crossAxisAlignment: crossStart,
        mainAxisSize: mainMin,
        children: [
          addVerticalSpace(Dimensions.heightSize),
          Text(
            Strings.paymentMethod,
            style: CustomStyle.requestSittingTextTitle,
          ),
          addVerticalSpace(Dimensions.heightSize * 2),
          Obx(() {
            return Flexible(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:
                    List.generate(controller.paymentMethodList.length, (index) {
                  var idx = controller.methodIndex.value == index;
                  return InkWell(
                    onTap: () {
                      controller.methodIndex.value = index;
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: Dimensions.defaultPaddingSize * 0.2),
                      child: Row(
                        mainAxisAlignment: mainSpaceBet,
                        children: [
                          Text(
                            controller.paymentMethodList[index],
                            style: CustomStyle.previewSubtitleTextStyle,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: Dimensions.heightSize * 1.5,
                            width: Dimensions.heightSize * 1.5,
                            decoration: BoxDecoration(
                              color: idx
                                  ? CustomColor.primaryColor
                                  : CustomColor.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: idx
                                      ? CustomColor.transparent
                                      : CustomColor.secondaryTextColor,
                                  width: 1.5),
                            ),
                            child: Visibility(
                              visible: idx ? true : false,
                              child: Icon(
                                Icons.check_rounded,
                                color: CustomColor.whiteColor,
                                size: Dimensions.iconSizeDefault * 0.8,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            );
          }),
          addVerticalSpace(Dimensions.heightSize * 3)
        ],
      ),
    );
  }

  _continueButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      text: Strings.continues,
      onPressed: () {
        controller.onPressedPreviewContinue();
      },
    );
  }

  _customSliderWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize),
      child: CustomSliderWidget(value: 60, text: Strings.preview),
    );
  }
}
