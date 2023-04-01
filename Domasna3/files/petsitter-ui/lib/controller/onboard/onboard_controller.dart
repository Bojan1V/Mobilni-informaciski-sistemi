import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import '../../data/onboard_data.dart';
import '../../routes/routes.dart';
import '../../utils/strings.dart';

class OnboardScreenController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  
  bool get isLastPage => selectedPageIndex.value == onboardData.length;
  bool get isFirstPage => selectedPageIndex.value == 0;
  bool get isSecondPage => selectedPageIndex.value == 1;
  bool get isThirdPage => selectedPageIndex.value == 2;

  void nextPage() {
    if (isLastPage) {
    } else {
      pageController.nextPage(
        duration: 300.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  void backPage() {
    pageController.previousPage(
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

// navigate to the welcome screen
  pageNavigate() {
    Get.toNamed(Routes.welcomeScreen);
  }


  // button widget with color and size
  buttonWidget() {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize*3),
      child: PrimaryButtonWidget(
        text:Strings.getStarted ,
         onPressed: (){
              isFirstPage || isSecondPage ? nextPage() : pageNavigate();
         }),
    );
  }
}
