import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/profile_widget/profile_widget.dart';
import '../../controller/profile_controller/profile_controller.dart';
import '../../utils/assets.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final controller = Get.put(ProfileScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      extendBodyBehindAppBar: true,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _imgPickerWidget(context),
        _textWidget(context),
        _buttonWidget(context),
        _profileTileWidget(context),
      ],
    );
  }

  _imgPickerWidget(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.profileAppbarBg), fit: BoxFit.fill),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.height * 0.15,
          top: MediaQuery.of(context).size.height * 0.1,
          child: CircleAvatar(
            radius: Dimensions.radius * 7,
            backgroundColor: CustomColor.screenBGColor,
            child: CircleAvatar(
              radius: Dimensions.radius * 6.5,
              backgroundImage: const AssetImage(Assets.stylish),
            ),
          ),
        ),
      ],
    );
  }

  _textWidget(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(Dimensions.heightSize * 4),
        Text(
          Strings.adersonBulip,
          style: CustomStyle.dashboardtitleTextStyle,
        ),
        Text(
          Strings.adersonbuilpgmail,
          style: CustomStyle.previewTotalTextStyle,
        ),
      ],
    );
  }

  _buttonWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimensions.defaultPaddingSize * 3,
        vertical: Dimensions.defaultPaddingSize * 1.6,
      ),
      child: PrimaryButtonWidget(
        text: Strings.editProfile,
        onPressed: () {
          controller.onPressedEdiProfile();
        },
      ),
    );
  }

  _profileTileWidget(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize * 0.5),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                controller.onPressedMyPets();
              },
              child: const ProfileTileWidget(
                  img: Assets.myPets, text: Strings.myPets)),
          Divider(
            height: 1.2,
            color: CustomColor.primaryTextColor.withOpacity(0.2),
          ),
          InkWell(
            onTap: () {
              controller.onPressedSavedLocation();
            },
            child: const ProfileTileWidget(
              img: Assets.saveAddres,
              text: Strings.savedLocation,
            ),
          ),
          Divider(
            height: 1.2,
            color: CustomColor.primaryTextColor.withOpacity(0.2),
          ),
          InkWell(
            onTap: () {
              controller.onPressedPaymentMethod();
            },
            child: const ProfileTileWidget(
              img: Assets.paymentMethod,
              text: Strings.paymentMethod,
            ),
          ),
          Divider(
            height: 1.2,
            color: CustomColor.primaryTextColor.withOpacity(0.2),
          ),
          InkWell(
            onTap: () {
              controller.onPressedChangeLangguage();
            },
            child: const ProfileTileWidget(
              img: Assets.changeLanguage,
              text: Strings.changeLanguage,
            ),
          ),
          Divider(
            height: 1.2,
            color: CustomColor.primaryTextColor.withOpacity(0.2),
          ),
          InkWell(
            onTap: () {
              controller.onPressedChangePassword();
            },
            child: const ProfileTileWidget(
              img: Assets.key,
              text: Strings.changePassword,
            ),
          ),
          addVerticalSpace(Dimensions.heightSize*3)
        ],
      ),
    );
  }
}
