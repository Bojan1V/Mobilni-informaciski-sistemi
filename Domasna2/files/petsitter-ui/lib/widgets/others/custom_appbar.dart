import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../button/back_button.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Color bgColor;
  final String title;
  List<Widget>? actions;
  final bool centerTitle;
  final bool alwaysShowBackButton;
  final double elevation;
  
  CustomAppBar({
    Key? key,
    required this.title,
    this.elevation=2,
    this.bgColor=CustomColor.whiteColor,
    this.actions,
    this.centerTitle = false,
    this.alwaysShowBackButton = true,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
          alwaysShowBackButton == true ? const BackButtonWidget() : Container(),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: CustomColor.primaryTextColor,
          fontSize: Dimensions.defaultTextSize,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevation: elevation,
      actions: actions,
      centerTitle: centerTitle == true ? true : false,
      automaticallyImplyLeading: false,
      backgroundColor: bgColor,
    );
  }
}
