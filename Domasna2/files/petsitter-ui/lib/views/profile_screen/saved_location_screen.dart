import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../utils/assets.dart';
import '../../utils/custom_style.dart';
import '../../utils/size.dart';

class SavedLocationScreen extends StatelessWidget {
  const SavedLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.savedLocation),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: Column(
        children: [
          _locationWidget(context),
          _addAddressButtonWidget(context),
        ],
      ),
    );
  }

  _locationWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              vertical: Dimensions.marginSize,
              horizontal: Dimensions.marginSize * 0.5),
          child: Row(
            crossAxisAlignment: crossStart,
            children: [
              Expanded(
                flex: 0,
                child: SvgPicture.asset(
                  Assets.homeAddress,
                ),
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.5),
              Expanded(
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      Strings.addHome,
                      style: CustomStyle.savedLocationTextStyle,
                    ),
                    Text(
                      Strings.locationCalifornia,
                      style: CustomStyle.savedLocationSubTitleTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: CustomColor.primaryTextColor.withOpacity(0.15),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: Dimensions.marginSize,
              horizontal: Dimensions.marginSize * 0.5),
          child: Row(
            crossAxisAlignment: crossStart,
            children: [
              Expanded(
                flex: 0,
                child: SvgPicture.asset(
                  Assets.officeAddres,
                ),
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.5),
              Expanded(
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      Strings.addOffice,
                      style: CustomStyle.savedLocationTextStyle,
                    ),
                    Text(
                      Strings.locationCalifornia,
                      style: CustomStyle.savedLocationSubTitleTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: CustomColor.primaryTextColor.withOpacity(0.15),
        ),
        addVerticalSpace(Dimensions.heightSize*3)
      ],
    );
  }

  _addAddressButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      text: Strings.addNewAddress,
      onPressed: () {
        Get.toNamed(Routes.requestSettingSavedLocationScreen);
      },
    );
  }
}
