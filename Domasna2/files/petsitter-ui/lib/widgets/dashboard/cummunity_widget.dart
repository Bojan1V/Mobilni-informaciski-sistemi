import 'package:flutter/material.dart';

import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class CummunityWidget extends StatelessWidget {
  const CummunityWidget({super.key, required this.img, required this.text});
  final String img, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize*0.4),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(img),
          ),
          addVerticalSpace(Dimensions.heightSize * 0.6),
          Text(
            text,
            style: CustomStyle.dashboardNameTextStyle,
          )
        ],
      ),
    );
  }
}
