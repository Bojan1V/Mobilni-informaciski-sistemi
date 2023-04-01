import 'package:flutter/material.dart';

import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class MyPetsWidget extends StatelessWidget {
  const MyPetsWidget({super.key, required this.img, required this.text});
  final String img, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: Dimensions.defaultPaddingSize*0.5,bottom: Dimensions.defaultPaddingSize*0.4),
      width: MediaQuery.of(context).size.width*0.42,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.height * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius),
                  topRight: Radius.circular(Dimensions.radius),
                ),
                image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover,),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Dimensions.borderRadius),
                  bottomRight: Radius.circular(Dimensions.borderRadius),
                ),
              ),
              child: Text(
                text,
                style: CustomStyle.defaultTitleTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
