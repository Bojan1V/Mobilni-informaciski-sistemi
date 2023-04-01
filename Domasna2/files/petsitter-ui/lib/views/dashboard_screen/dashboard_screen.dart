import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/controller/dashboard/dashboard_controller.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/widgets/dashboard/cummunity_widget.dart';
import 'package:petsitter/widgets/dashboard/swipe_card_widget.dart';

import '../../utils/assets.dart';
import '../../utils/strings.dart';
import '../../widgets/dashboard/blog_widget.dart';
import '../../widgets/dashboard/review_widget.dart';
import 'dashboard_slider.dart';

import 'package:swipeable_card_stack/swipeable_card_stack.dart';

SwipeableCardSectionController _cardController =
    SwipeableCardSectionController();

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        DashboardSlider(),
        _ourPetRowWidget(context),
        _ourPetWidget(context),
        _comunityRowWidget(context),
        _communityWidget(context),
        _blogRowWidget(),
        _blogWidget(context),
        _reviewRowWidget(context),
        _reviewWidet(context),
        addVerticalSpace(Dimensions.heightSize * 4),
      ],
    );
  }

  _ourPetRowWidget(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: Dimensions.marginSize,
        right: Dimensions.marginSize,
        top: Dimensions.marginSize,
        bottom: Dimensions.marginSize * 0.7,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Text(
                Strings.ourPet,
                style: CustomStyle.dashboardtitleTextStyle,
              ),
              InkWell(
                onTap: () {
                  controller.onPressedOurPetsSeeMore();
                },
                child: Text(
                  Strings.seeMore,
                  style: CustomStyle.appbarActionTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _ourPetWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.395,
      child: Column(
        children: [
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            cardWidthBottomMul: 0.85,
            cardWidthMiddleMul: 0.83,
            cardWidthTopMul: 0.81,

        
            items: [
              SwipeCardWidget(
                  img: Assets.dashboardDog,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.minicat,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.minidog,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.blackCat,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.dogBreeds,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.minicat,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.dashboardDog,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.minidog,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
              SwipeCardWidget(
                  img: Assets.blackCat,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian),
            ],
            onCardSwiped: (dir, index, widget) {
              _cardController.addItem(
                SwipeCardWidget(
                  img: Assets.dashboardDog,
                  title: Strings.grigioCham,
                  subtile: Strings.abyssinian,
                ),
              );
            },
            enableSwipeUp: false,
            enableSwipeDown: false,
          ),
        ],
      ),
    );
  }

  _comunityRowWidget(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: Dimensions.marginSize,
        right: Dimensions.marginSize,
        top: Dimensions.marginSize * 0.8,
        bottom: Dimensions.marginSize * 0.8,
      ),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.community,
            style: CustomStyle.dashboardtitleTextStyle,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.communityScreen);
            },
            child: Text(
              Strings.seeMore,
              style: CustomStyle.appbarActionTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  _communityWidget(BuildContext context) {
    return SizedBox(
        height: Dimensions.heightSize * 10.3,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: const [
            CummunityWidget(
              img: Assets.breedMan,
              text: Strings.brionalJhon,
            ),
            CummunityWidget(
              img: Assets.prichionarMan,
              text: Strings.pricchionar,
            ),
            CummunityWidget(
              img: Assets.merryChris,
              text: Strings.merryChris,
            ),
            CummunityWidget(
              img: Assets.breedMan,
              text: Strings.brionalJhon,
            ),
            CummunityWidget(
              img: Assets.prichionarMan,
              text: Strings.pricchionar,
            ),
          ],
        ));
  }

  _blogRowWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.marginSize,
      ),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.blog,
            style: CustomStyle.dashboardtitleTextStyle,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              Strings.seeMore,
              style: CustomStyle.appbarActionTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  _blogWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          BlogWidget(
            text: Strings.howToPet,
            img: Assets.dogBreeds,
          ),
          BlogWidget(
            text: Strings.howToPet,
            img: Assets.blackCat,
          ),
          BlogWidget(
            text: Strings.howToPet,
            img: Assets.dogBreeds,
          ),
          BlogWidget(
            text: Strings.howToPet,
            img: Assets.dogBreeds,
          ),
        ],
      ),
    );
  }

  _reviewRowWidget(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
          horizontal: Dimensions.marginSize,
          vertical: Dimensions.marginSize * 0.4),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.review,
            style: CustomStyle.dashboardtitleTextStyle,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              Strings.seeMore,
              style: CustomStyle.appbarActionTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  _reviewWidet(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          ReviewWidget(
              img: Assets.breedMan,
              name: Strings.brionalJhon,
              timeText: Strings.monthAgo,
              details: Strings.itIsALongEntable,
              reviewImg: Assets.fillStart,
              reviewText: "4.5"),
          ReviewWidget(
              img: Assets.merryChris,
              name: Strings.brionalJhon,
              timeText: Strings.monthAgo,
              details: Strings.itIsALongEntable,
              reviewImg: Assets.fillStart,
              reviewText: "4.5"),
          ReviewWidget(
              img: Assets.prichionarMan,
              name: Strings.brionalJhon,
              timeText: Strings.monthAgo,
              details: Strings.itIsALongEntable,
              reviewImg: Assets.fillStart,
              reviewText: "4.5"),
        ],
      ),
    );
  }
}
