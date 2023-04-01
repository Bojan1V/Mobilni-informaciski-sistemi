import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';

class SliderNumberWidget extends StatelessWidget {
   SliderNumberWidget({super.key, required this.value, required this.text});
   final int value;
   final String text;

  @override
  Widget build(BuildContext context) {
    final mainValue = value > 100 ? 100 : value;
  
 return Padding(
    padding:
        EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize * 0.3),
    child: Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 300,
            height: 4,
            decoration: BoxDecoration(
              color: CustomColor.secondearyColor.withOpacity(0.50),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Container(
          width: (300 * mainValue) / 100,
          height: 4,
          decoration: const BoxDecoration(
            color: CustomColor.primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
          ),
        ),
        Positioned(
          left: (300 * mainValue) / 100,
          child:  CircleAvatar(
            radius: 11,
            backgroundImage: AssetImage(Assets.petLeg),
          ),
        ),
        Positioned(
          left: (215 * mainValue) / 100,
          top: 34,
          child: Column(
            children: [
              Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: Dimensions.extraSmallTextSize,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.primaryTextColor.withOpacity(0.6)
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
  }
