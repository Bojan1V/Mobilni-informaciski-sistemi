import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/assets.dart';
import '../../utils/dimensions.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimensions.heightSize*0.8),
      child: GestureDetector(
        onTap: (){
          Get.back();
        },
        child:SvgPicture.asset(Assets.backwad,height: Dimensions.heightSize,)
      ),
    );
  }
}