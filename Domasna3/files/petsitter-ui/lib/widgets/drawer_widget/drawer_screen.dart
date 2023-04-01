
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import '../../controller/drawer/rate_us_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';
import '../../utils/strings.dart';
import 'package:share_plus/share_plus.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: MediaQuery.of(context).size.width / 1.35,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimensions.radius * 2),
        )),
        backgroundColor: CustomColor.screenBGColor,
        child: Stack(
          alignment: Alignment.topRight,
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.heightSize * 3),
              child: ListView(
                children: [
                  _userInformationWidget(context),
                  _drawerWidget(context),
                  _deletAccountAndButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _userInformationWidget(BuildContext context) {
    return Column(
      children: [
        _userImage(context),
        _userTitle(context),
      ],
    );
  }

  _userImage(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: Dimensions.radius * 7.4,
        backgroundColor: CustomColor.primaryColor,
        child: CircleAvatar(
          radius: Dimensions.radius * 7,
          backgroundColor: CustomColor.screenBGColor,
          backgroundImage: const AssetImage(Assets.stylish),
        ),
      ),
    );
  }

  _userTitle(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.heightSize * 2),
      child: Column(
        children: [
          Text(
            Strings.adersonBulip,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Dimensions.mediumTextSize * 1.2,
              fontWeight: FontWeight.w600,
              color: CustomColor.primaryTextColor,
            ),
          ),
          Text(
            Strings.adersonbuilpgmail,
            style: TextStyle(
              fontSize: Dimensions.smallestTextSize,
              fontWeight: FontWeight.w600,
              color: CustomColor.primaryTextColor.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  _drawerWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      mainAxisAlignment: mainCenter,
      children: [
        _drawerTileWidget(
          Assets.doller,
          Strings.ourCharges,
          onTap: () {
            Get.toNamed(Routes.ourChargesScreen);
          },
        ),
        _drawerTileWidget(
          Assets.serviceHistory,
          Strings.serviceHistory,
          onTap: () {
            Get.toNamed(Routes.serviceHistoryScreen);
          },
        ),
        _drawerTileWidget(
          Assets.rateus,
          Strings.rateUs,
          onTap: () {
            _openDialogue(context);
          },
        ),
        _drawerTileWidget(
          Assets.shareAPp,
          Strings.shareApp,
          onTap: () {
            
           Share.share('Invite Your Friends');
           
           }
        ),
        _drawerTileWidget(
          Assets.aboutus,
          Strings.aboutUs,
          onTap: () {},
        ),
        _drawerTileWidget(
          Assets.referFriend,
          Strings.referFriend,
          onTap: () {},
        ),
        _drawerTileWidget(
          Assets.helpCenter,
          Strings.helpCenter,
          onTap: () {},
        ),
        _drawerTileWidget(
          Assets.termCondition,
          Strings.termsCondition,
          onTap: () {},
        ),
        _drawerTileWidget(
          Assets.privacyPolici,
          Strings.privacyPolicy,
          onTap: () {},
        ),
      ],
    );
  }

  _drawerTileWidget(icon, title, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultPaddingSize * 0.7,
            vertical: Dimensions.defaultPaddingSize * 0.28),
        child: Column(
          mainAxisAlignment: mainCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.defaultPaddingSize * 0.5,
                bottom: Dimensions.defaultPaddingSize * 0.3,
              ),
              child: Row(
                crossAxisAlignment: crossStart,
                mainAxisAlignment: mainStart,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: Dimensions.defaultPaddingSize*0.13),
                    child: SvgPicture.asset(icon),
                  ),
                  addHorizontalSpace(Dimensions.widthSize*1.5),
                  Text(
                    title,
                    style: CustomStyle.drawerTextStyle,
                  ),
                ],
              ),
            ),
            Divider(
              color: CustomColor.primaryTextColor.withOpacity(0.2),
              height: 1.2,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }

  _deletAccountAndButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Dimensions.defaultPaddingSize * 1.2,
        right: Dimensions.defaultPaddingSize * 1.2,
        bottom: Dimensions.defaultPaddingSize * 1.2,
      ),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.deleteAccount),
              addHorizontalSpace(Dimensions.widthSize),
              Text(
                Strings.deleteAccount,
                style: GoogleFonts.poppins(
                  fontSize: Dimensions.mediumTextSize * 0.95,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.alertColor,
                ),
              ),
            ],
          ),
          addVerticalSpace(Dimensions.heightSize * 3),
          PrimaryButtonWidget(
            backgroundColor: CustomColor.alertColor,
            text: Strings.signOut,
            onPressed: () {
              Get.toNamed(Routes.signInScreen);
            },
          ),
        ],
      ),
    );
  }
}

_openDialogue(BuildContext context) {
  final controller = Get.put(RateUsController());
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      backgroundColor: CustomColor.whiteColor,
      alignment: Alignment.center,
      // insetPadding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.4),
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Builder(
        builder: (context) {
          var width = MediaQuery.of(context).size.width;
          return SizedBox(
            width: width * 1.3,
            height: 430,
            // padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.4),
            child: Column(
              mainAxisAlignment: mainCenter,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: MediaQuery.of(context).size.height * 0.23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(250, 110),
                          bottomRight: Radius.elliptical(250, 110),
                        ),
                        color: CustomColor.secondearyColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: Dimensions.marginSize),
                        child: Image.asset(
                          Assets.welcomepet,
                          height: MediaQuery.of(context).size.height * 0.18,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 20,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(Assets.cross),
                      ),
                    ),
                  ],
                ),
                Text(
                  Strings.rateUs,
                  style: CustomStyle.titleTextStyle,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.defaultPaddingSize * 0.3),
                    child: Text(
                      Strings.tabAStarToSet,
                      textAlign: TextAlign.center,
                      style: CustomStyle.previewSubtitleTextStyle,
                    ),
                  ),
                ),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                addVerticalSpace(Dimensions.heightSize),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize*0.5),
                  child: TextFormField(
                    controller: controller.reiewController,
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                      hintText: Strings.writeHereYour,
                      hintStyle: TextStyle(
                        fontSize: Dimensions.mediumTextSize,
                        color: CustomColor.secondaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),addVerticalSpace(Dimensions.heightSize * 0.5),
                Text(
                  Strings.submit,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: Dimensions.mediumTextSize,
                    color: CustomColor.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                addVerticalSpace(Dimensions.heightSize * 0.5),
              ],
            ),
          );
        },
      ),
    ),
  );
}
