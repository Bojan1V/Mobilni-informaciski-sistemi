import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({super.key, required this.img, required this.text});
  final String img,text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.defaultPaddingSize * 0.2),
            child: ListTile(
              leading: SvgPicture.asset(img),
              title: Text(text,
                  style: CustomStyle.profiletitleTextStyle),
              trailing: Container(
                height: Dimensions.heightSize * 2.2,
                width: Dimensions.widthSize * 2.8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColor.primaryColor.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: CustomColor.primaryColor,
                  size: 15,
                ),
              ),
            ),
          );
  }
}