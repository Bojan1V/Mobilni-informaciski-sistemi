import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';

buildBottomNavigationMenu(context, bottomNavBarController) {
  return Container(
    height: Dimensions.heightSize*4,
    width: MediaQuery.of(context).size.width,
    decoration:  const BoxDecoration(
      color: CustomColor.secondearyColor,
      
    ),
    child: BottomAppBar(
      color: CustomColor.secondearyColor,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            bottomItemWidget(Assets.home, bottomNavBarController, 0),
            addHorizontalSpace(Dimensions.widthSize*11),
            bottomItemWidget(Assets.profile, bottomNavBarController, 1),
          ],
        ),
      ),
    ),
  );
}

bottomItemWidget(var icon, bottomNavBarController, page) {
  return Expanded(
    child: InkWell(
      onTap: () {
        bottomNavBarController.selectedIndex.value = page;
      },
      child: SvgPicture.asset(
        icon,
        // ignore: deprecated_member_use
        color: bottomNavBarController.selectedIndex.value == page
            ? CustomColor.primaryTextColor
            : CustomColor.secondaryTextColor,
        height: 22,
      ),
    ),
  );
}
