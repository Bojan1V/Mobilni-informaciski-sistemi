import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboard/onboard_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';

class OnboardContentWidget extends StatelessWidget {
  OnboardContentWidget({
    Key? key,
    required this.image,}) : super(key: key);

  final String image;

  final controller = Get.put(OnboardScreenController());
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height * 0.558,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(350, 110),
              bottomRight: Radius.elliptical(350, 110),
            ),
            color: CustomColor.secondearyColor,
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: Dimensions.marginSize),
            child: Image(
              height: MediaQuery.of(context).size.height / 3,
              image: AssetImage(image),
            ),
          ),
        )
      ],
    );
  }
}
