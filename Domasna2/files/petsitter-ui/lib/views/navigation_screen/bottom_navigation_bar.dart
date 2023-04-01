import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_style.dart';
import '../../controller/bottom_navbar_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';
import '../../widgets/bottom_navbar/navba_widget.dart';
import '../../widgets/drawer_widget/drawer_screen.dart';

class BottomNavBarScreen extends StatelessWidget {
  final bottomNavBarController =
      Get.put(BottomNavBarController(), permanent: false);
      final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  BottomNavBarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        drawer: const CustomDrawer(),
        key: scaffoldKey,
        appBar: appbarWidget(context),
        // extendBody: true,
        backgroundColor: Colors.white,
        bottomNavigationBar:
    
            buildBottomNavigationMenu(context, bottomNavBarController),
        floatingActionButton: _midButtonWidget(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: bottomNavBarController
            .page[bottomNavBarController.selectedIndex.value],
      ),
    );
  }

  _midButtonWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        bottomNavBarController.onPressedMidIcon();
      },
      child: SvgPicture.asset(Assets.midIcon),
    );
  }

  appbarWidget(BuildContext context) {
    return AppBar(
      backgroundColor: bottomNavBarController.selectedIndex.value == 0
          ? CustomColor.screenBGColor
          : CustomColor.secondearyColor,
      elevation: bottomNavBarController.selectedIndex.value == 0 ? 2 : 0,
      centerTitle: true,
      leading: InkWell(
        onTap: (){
          bottomNavBarController.onPressedMenuIcon();
        },
        child: Padding(
          padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.65),
          child: InkWell(
            onTap: () {
             scaffoldKey.currentState!.openDrawer();
            },
            child: SvgPicture.asset(
              Assets.menu,
              height: Dimensions.heightSize,
            ),
          ),
        ),
      ),
      title: bottomNavBarController.selectedIndex.value == 0
          ? Padding(
              padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 1.2),
              child: Image.asset(Assets.appLogo),
            )
          :  Text(Strings.profile,style: CustomStyle.dashboardtitleTextStyle,),
      actions: [
        InkWell(
          onTap: (){
            bottomNavBarController.onPressedNotification();
          },
          child: Padding(
            padding: EdgeInsets.only(right: Dimensions.defaultPaddingSize),
            child: SvgPicture.asset(Assets.notification),
          ),
        )
      ],
    );
  }
}
