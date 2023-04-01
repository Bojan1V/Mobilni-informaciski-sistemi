import 'package:flutter/material.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/dimensions.dart';
import '../../utils/custom_style.dart';
import '../../utils/size.dart';

class BlogWidget extends StatelessWidget {
  const BlogWidget({super.key, required this.text, required this.img});
  final String text, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize*0.5),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          addVerticalSpace(Dimensions.heightSize),
          Container(
            decoration: BoxDecoration(
              color: CustomColor.primaryTextColor,
              borderRadius: BorderRadius.circular(Dimensions.radius),
            ),
            width: MediaQuery.of(context).size.height * 0.3,
            height: MediaQuery.of(context).size.width * 0.45,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          Dimensions.radius * 1.5,
                        ),
                        topLeft: Radius.circular(
                          Dimensions.radius * 1.5,
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: Dimensions.marginSize * 0.2,
                    horizontal: Dimensions.marginSize * 0.5,
                  ),
                  child: Text(
                    text,
                    style: CustomStyle.smallWhiteTextStyle,
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
