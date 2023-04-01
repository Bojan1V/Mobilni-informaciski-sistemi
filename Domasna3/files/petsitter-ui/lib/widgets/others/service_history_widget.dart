import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';

class ServiceHistoryWidget extends StatelessWidget {
  const ServiceHistoryWidget(
      {super.key,
      required this.img,
      required this.nameTx,
      required this.ageTx,
      required this.weightTx,
      required this.buttonColor,
      required this.buttonTx});
  final String img, nameTx, ageTx, weightTx, buttonTx;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.heightSize * 0.5,
              horizontal: Dimensions.widthSize * 1.3),
          height: Dimensions.heightSize * 8,
          color: CustomColor.primaryColor.withOpacity(0.2),
          child: Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(img),
                ),
              ),
              addHorizontalSpace(Dimensions.widthSize * 1.5),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      Strings.sittingRequest,
                      style: CustomStyle.serviceHistoryTextStyle,
                    ),
                    Text(
                      nameTx,
                      style: CustomStyle.serviceHistorysubTitleTextStyle,
                    ),
                    Text(
                      ageTx,
                      style: CustomStyle.serviceHistorysubTitleTextStyle,
                    ),
                    Text(
                      weightTx,
                      style: CustomStyle.serviceHistorysubTitleTextStyle,
                    )
                  ],
                ),
              ),
              addHorizontalSpace(Dimensions.widthSize * 3),
              Column(
                crossAxisAlignment: crossEnd,
                children: [
                  addVerticalSpace(Dimensions.heightSize*0.5),
                  Row(
                    children: [
                      Text(
                        Strings.time,
                        style: CustomStyle.notificationTimerTextStyle,
                      ),
                      addHorizontalSpace(Dimensions.widthSize * 0.5),
                      const CircleAvatar(
                        radius: 1,
                        backgroundColor: CustomColor.secondaryTextColor,
                      ),
                      addHorizontalSpace(Dimensions.widthSize * 0.2),
                      Text(
                        Strings.date,
                        style: CustomStyle.notificationTimerTextStyle,
                      ),
                    ],
                  ),
                  addVerticalSpace(Dimensions.heightSize * 1.3),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: Dimensions.widthSize * 8.8,
                      height: Dimensions.heightSize * 2,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius * 0.4,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          buttonTx,
                          style: GoogleFonts.poppins(
                            fontSize: Dimensions.extraSmallestTextSize,
                            color: CustomColor.whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          color: CustomColor.whiteColor,
          height: 0.5,
        )
      ],
    );
  }
}
