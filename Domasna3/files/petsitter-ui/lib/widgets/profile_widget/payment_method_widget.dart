import 'package:flutter/material.dart';
import 'package:petsitter/utils/size.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class PaymentMethodListtileWidget extends StatelessWidget {
  const PaymentMethodListtileWidget({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.color,
  });
  final String img, title, subTitle, buttonText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: Row(mainAxisAlignment: mainSpaceBet, children: [
        Expanded(
          flex: 2,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.4,
                color: CustomColor.secondaryTextColor.withOpacity(0.4)
              ),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),addHorizontalSpace(Dimensions.widthSize*2),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: crossStart,
            children: [
              Text(
                title,
                style: CustomStyle.requestSittingTextTitle,
              ),
              Text(
                subTitle,
                style: CustomStyle.savedLocationSubTitleTextStyle,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            height: Dimensions.heightSize * 2,
            width: Dimensions.widthSize * 7,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                Dimensions.radius * 0.4,
              ),
            ),
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: CustomStyle.paymentAddButtonTextStyle,
            ),
          ),
        ),
      ]),
    );
  }
}
