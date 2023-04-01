import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/controller/dashboard/dashboard_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';

class DashboardSlider extends StatelessWidget {
  DashboardSlider({Key? key}) : super(key: key);

  final List<String> imgList = [
    Assets.banner,
    Assets.banner,
    Assets.banner,
  ];

  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Obx(() {
      return Column(
        children: [
          CarouselSlider(
            items: imgList.map((img) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: w,
                    decoration: BoxDecoration(
                    
                      image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high),
                    ),
                  );
                },
              );
            }).toList(),
            carouselController: controller.carouselController,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                controller.current.value = index; //! Custom Dot indicator State
              },
              height: MediaQuery.of(context).size.height / 5,
              
              viewportFraction: 1,
              initialPage: 1,
              enableInfiniteScroll: true,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(seconds: 2),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Align(
            //! Custom Dot indicator Start
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return controller.current.value == entry.key
                    ? Container(
                        width: Dimensions.widthSize,
                        height: Dimensions.heightSize * 0.7,
                        margin: EdgeInsets.symmetric(
                            vertical: h * 0.008, horizontal: h * 0.006),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColor.primaryColor,
                        ))
                    : Container(
                        width: Dimensions.widthSize,
                        height: Dimensions.heightSize * 0.7,
                        margin: EdgeInsets.symmetric(
                            vertical: h * 0.008, horizontal: h * 0.006),
                        decoration: BoxDecoration(
                          border: Border.all(color: CustomColor.primaryColor),
                          shape: BoxShape.circle,
                        ),
                      );
              }).toList(),
            ),
          ),
        ],
      );
    });
  }
}
