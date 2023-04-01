import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/data/onboard_data.dart';
import 'package:petsitter/utils/size.dart';

import '../../controller/onboard/onboard_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../widgets/onboard/onboard.dart';
import '../../widgets/onboard/title_subtile.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key}) : super(key: key);

  final controller = Get.put(OnboardScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      body: bodyWidget(context),
    );
  }

  bodyWidget(BuildContext context) {
    return Column(
      children: [
        _pageViewBuilderWidget(context),
        addVerticalSpace(Dimensions.heightSize * 2),
        _sliderWidget(context),
        _titleSubTitleWidget(context),
      ],
    );
  }

  _pageViewBuilderWidget(BuildContext context) {
    return Expanded(
      flex: 7,
      child: PageView.builder(
        onPageChanged: controller.selectedPageIndex,
        controller: controller.pageController,
        itemCount: onboardData.length,
        itemBuilder: (context, index) {
          return OnboardContentWidget(
            image: onboardData[index].image,
          );
        },
      ),
    );
  }

  _sliderWidget(BuildContext context) {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onboardData.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: EdgeInsets.only(right: Dimensions.marginSize),
              height: index == controller.selectedPageIndex.value
                  ? Dimensions.widthSize
                  : Dimensions.widthSize,
              width: index == controller.selectedPageIndex.value
                  ? Dimensions.widthSize * 2.3
                  : Dimensions.widthSize,
              decoration: BoxDecoration(
                color: index == controller.selectedPageIndex.value
                    ? CustomColor.primaryColor
                    : CustomColor.secondearyColor,
                borderRadius: BorderRadius.circular(Dimensions.radius),
              ),
            ),
          ),
        ));
  }

  _titleSubTitleWidget(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(() => TitleSubTitleWidget(
              title: onboardData[controller.selectedPageIndex.value].title,
              subTitle:
                  onboardData[controller.selectedPageIndex.value].description)),
          controller.buttonWidget(),
        ],
      ),
    );
  }
}
