import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/input/input_field.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/custom_slider_widget.dart';
import '../../controller/request_for_sitting/set_picup_location_controller.dart';
import '../../utils/dimensions.dart';
import '../../widgets/button/primary_button.dart';

final controller = Get.put(PicUpLocationController());

class SetPicupLocationScreen extends StatelessWidget {
  SetPicupLocationScreen({Key? key}) : super(key: key);

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 13,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.setPicupLocation),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
          ),
          _bodyWidget(context),
        ],
      ),
      bottomSheet: showBottomSheet(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Dimensions.marginSize, vertical: Dimensions.marginSize*0.6),
      child: Column(
        children: [
           CustomSliderWidget(value: 45, text: Strings.setPicupLocation),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 4.4,
              right: MediaQuery.of(context).size.height / 6,
            ),
            child: SvgPicture.asset(
              Assets.locate,
              height: Dimensions.heightSize * 3,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

Widget showBottomSheet(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: Dimensions.defaultPaddingSize * 1.5),
    height: MediaQuery.of(context).size.height * 0.36,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: CustomColor.secondearyColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.elliptical(350, 110),
          topLeft: Radius.elliptical(350, 110),
        )),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -Dimensions.heightSize * 7,
          right: Dimensions.widthSize * 2.5,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: CustomColor.primaryColor.withOpacity(0.2),
            child: SvgPicture.asset(
              Assets.selectLocation,
              height: Dimensions.heightSize * 3,
              width: Dimensions.widthSize * 2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(Dimensions.marginSize),
          child: Column(
            crossAxisAlignment: crossStart,
            children: [
              InputFieldWidget(
                controller: controller.locationController,
                hintText: Strings.location2,
                widget: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.search,
                  ),
                ),
              ),
              addVerticalSpace(Dimensions.heightSize),
              PrimaryButtonWidget(
                text: Strings.setPicupLocation,
                onPressed: () {
                  Get.toNamed(Routes.previewScreen);
                },
              ),
              addVerticalSpace(Dimensions.heightSize * 1.3),
              PrimaryButtonWidget(
                  text: Strings.savedLocation,
                  borderColor: CustomColor.primaryColor,
                  backgroundColor: CustomColor.transparent,
                  textColor: CustomColor.primaryColor,
                  onPressed: () {
                    Get.toNamed(Routes.requestSettingSavedLocationScreen);
                  })
            ],
          ),
        ),
      ],
    ),
  );
}
