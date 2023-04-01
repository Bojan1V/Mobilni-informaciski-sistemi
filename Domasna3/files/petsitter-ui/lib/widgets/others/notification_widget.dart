import 'package:flutter/material.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';

class NotificatinWidget extends StatelessWidget {
  final String img, title, subTitle, date, time;
  const NotificatinWidget({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: Dimensions.heightSize * 8,
          color: CustomColor.primaryColor.withOpacity(0.2),
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.defaultPaddingSize * 0.33,
            horizontal: Dimensions.defaultPaddingSize * 0.4,
          ),
          child: Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor:
                      CustomColor.secondaryTextColor.withOpacity(0.5),
                  radius: 28,
                  backgroundImage: AssetImage(
                    img,
                  ),
                ),
              ),addHorizontalSpace(Dimensions.widthSize),
              Expanded(
                 flex: 6,
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Row(
                      mainAxisAlignment: mainSpaceBet,
                      children: [
                        Text(
                          title,
                          style: CustomStyle.notificationTitleTextStyle,
                        ),
                        addHorizontalSpace(Dimensions.widthSize * 4),
                        Text(
                          time,
                          style: CustomStyle.notificationTimerTextStyle,
                        ),
                        addHorizontalSpace(Dimensions.widthSize * 0.4),
                        const CircleAvatar(
                          radius: 2,
                          backgroundColor: CustomColor.secondaryTextColor,
                        ),
                        addHorizontalSpace(Dimensions.widthSize * 0.1),
                        Text(
                          date,
                          style: CustomStyle.notificationTimerTextStyle,
                        ),
                      ],
                    ),
                    addVerticalSpace(Dimensions.heightSize * 0.6),
                    Text(
                      subTitle,
                      style: CustomStyle.notificationSubTitleTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: CustomColor.whiteColor,
          height: 0.6,
        )
      ],
    );
  }
}
