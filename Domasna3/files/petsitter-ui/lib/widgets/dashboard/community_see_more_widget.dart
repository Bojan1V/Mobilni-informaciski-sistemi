import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/dimensions.dart';

class CommunitySeeMore extends StatelessWidget {
  const CommunitySeeMore({super.key, required this.img, required this.tile, required this.subTile});
  final String img,tile,subTile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.1,
               color: CustomColor.primaryColor.withOpacity(0.1),
              child:
                  ListTile(
                    leading: CircleAvatar(
                      radius: Dimensions.radius*3,
                      backgroundImage: AssetImage(img),
                    ),
                    title: Text(tile,
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.mediumTextSize*0.93,
                      color: CustomColor.primaryTextColor,
                      fontWeight: FontWeight.w600,
                    ),),
                    subtitle: Text(subTile, style: GoogleFonts.poppins(
                      fontSize: Dimensions.extraSmallestTextSize,
                      color: CustomColor.primaryTextColor.withOpacity(0.6),
                      fontWeight: FontWeight.w500,
                    )   ),
                  ),
                 
                
        ),
         Divider(height: 1,color: CustomColor.screenBGColor,)
      ],
    );
  }
}