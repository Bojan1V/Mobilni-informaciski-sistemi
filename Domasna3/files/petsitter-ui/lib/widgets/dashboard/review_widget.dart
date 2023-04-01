import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key, required this.img, required this.name, required this.timeText, required this.details, required this.reviewImg, required this.reviewText});
  final String img,name,timeText,details,reviewImg,reviewText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize*0.2),
      child: SizedBox(
       width: MediaQuery.of(context).size.width*0.7,
       
       
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5,
          child: Column(
            children: [
              Container(
                
                margin: EdgeInsets.symmetric(
                  vertical: Dimensions.marginSize * 0.3,
                  horizontal: Dimensions.marginSize * 0.5,
                ),
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Row(
                      mainAxisAlignment: mainSpaceBet,
                      children: [
                         CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(img),
                        ),
                        Column(
                          crossAxisAlignment: crossStart,
                          children: [
                            Row(
                              children: [
                                Text(
                                  name,
                                  style: CustomStyle.dashboardNameTextStyle,
                                ),addHorizontalSpace(Dimensions.widthSize*2),
                                 SvgPicture.asset(reviewImg),
                                 addHorizontalSpace(Dimensions.widthSize * 0.5),
                                 Text(
                                   reviewText,
                                   style: CustomStyle.dashboardSubNameTextStyle,
                                 )
                              ],
                            ),
                            Text(
                              timeText,
                              style: CustomStyle.dashboardSubNameTextStyle,
                            ),
                          ],
                        ),
                       
                      ],
                    ),
                    addVerticalSpace(Dimensions.heightSize),
                    Text(
                      details,
                      style: CustomStyle.dashboardSubNameTextStyle,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
