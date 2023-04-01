import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import '../../controller/dashboard/dashboard_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';
SwipeableCardSectionController _cardController =
    SwipeableCardSectionController();
class SwipeCardWidget extends StatelessWidget {
  SwipeCardWidget(
      {super.key,
      required this.img,
      required this.title,
      required this.subtile});
  final controller = Get.put(DashboardController());
  final String img, title, subtile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Card(
        shadowColor: CustomColor.secondaryTextColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 1.5),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.29,
              width: MediaQuery.of(context).size.height * 0.39,
              margin: EdgeInsets.all(Dimensions.marginSize * 0.4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.5),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSize * 1.5,
              ),
              child: Row(
                mainAxisAlignment: mainSpaceBet,
                children: [
                  Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Text(
                        title,
                        style: CustomStyle.dashboardNameTextStyle,
                      ),
                      addVerticalSpace(Dimensions.heightSize * 0.6),
                      Text(
                        subtile,
                        style: CustomStyle.dashboardSubNameTextStyle,
                      ),
                      addVerticalSpace(Dimensions.heightSize * 0.7),
                    ],
                  ),
                  Obx(() {
                    return GestureDetector(
                        onTap: () {
                          controller.changeStatus();
                          _cardController.triggerSwipeRight();
                        },
                        child: controller.isFilledHeart.value
                            ? SvgPicture.asset(
                                Assets.fillHeart,
                                height: Dimensions.heightSize * 1.8,
                              )
                            : SvgPicture.asset(
                                Assets.unfillheart,
                                height: Dimensions.heightSize * 1.8,
                              ));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
