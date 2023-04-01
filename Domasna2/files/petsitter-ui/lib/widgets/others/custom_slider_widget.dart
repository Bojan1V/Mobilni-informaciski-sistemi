import 'package:flutter/material.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/slider_number_widget.dart';


class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({super.key, required this.value, required this.text});
   final int value;
   final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Dimensions.radius * 2,
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            CustomColor.secondearyColor,
           CustomColor.secondearyColor.withOpacity(0.4)
          ],
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.only(
          left: Dimensions.defaultPaddingSize*0.4
        ),
        child: Column(crossAxisAlignment: crossStart,
      
         children: [
        
          
          Text(
              Strings.requestForSitting,
              style: CustomStyle.requestSittingTextTitle,
            ),
          addVerticalSpace(Dimensions.heightSize),
         SliderNumberWidget(value: value,text: text,),
          
        ]),
      ),
    );
  }
}
