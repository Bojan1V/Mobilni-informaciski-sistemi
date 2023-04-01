import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/widgets/input/input_field.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import '../../controller/request_for_sitting/saved_location_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/button/primary_button.dart';

class RequestSettingSavedLocationScreen extends StatelessWidget {
   RequestSettingSavedLocationScreen({Key? key}) : super(key: key);
  final controller =Get.put(RequestSettingSavedLocationController());

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
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize*0.9),
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
            text: Strings.currentLocation,
            onPressed: () {
              showBottomSheet(context);
            },
          ),
          addVerticalSpace(Dimensions.heightSize * 1.3),
          PrimaryButtonWidget(
              text: Strings.setOnMap,
              borderColor: CustomColor.primaryColor,
              backgroundColor: CustomColor.transparent,
              textColor: CustomColor.primaryColor,
              onPressed: () {
                //  Get.toNamed(Routes.signUpScreen);
              })
        ],
      ),
    );
  }

  showBottomSheet(BuildContext context) => showModalBottomSheet<void>(
        elevation: 0,
        backgroundColor:CustomColor.screenBGColor,
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(Dimensions.marginSize * 0.9),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossStart,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.defaultPaddingSize),
                  child: Text(
                    Strings.savedAddress,
                    style: CustomStyle.requestSittingTextTitle
                  ),
                ),
                
                addVerticalSpace(Dimensions.heightSize*2),
                _addressWidget(
                  context,
                  icon: Assets.homeAddress,
                  addressTitle: Strings.addHome,
                  onTap: () {
                    controller.onPressedAddHome();
                  },
                ),
                _addressWidget(
                  context,
                  icon: Assets.officeAddres,
                  addressTitle: Strings.addOffice,
                  onTap: () {
                    controller.onPressedAddOffice();
                  },
                ),
              ],
            ),
          );
        },
      );
      
  _addressWidget(BuildContext context,
      {required String icon,
      required addressTitle,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: Dimensions.heightSize),
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            Row(
              crossAxisAlignment: crossStart,
              children: [
                Expanded(
                  flex: 0,
                  child: SvgPicture.asset(icon),
                ),
                addHorizontalSpace(Dimensions.widthSize),
                Expanded(
                  flex: 0,
                  child: Text(
                    addressTitle,
                    style: TextStyle(
                      fontSize: Dimensions.extraSmallTextSize,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.secondaryTextColor,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(thickness: 1),
          ],
        ),
      ),
    );
  }
}
