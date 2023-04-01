import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_color.dart';
import 'dimensions.dart';

class CustomStyle {
  //splash screen
  static var appVersionTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w500,
  );
  //onBoard

  static var titleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraLargeTextSize,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w600,
  );

  static var onboardSubTitleStyle = GoogleFonts.poppins(
    fontSize: Dimensions.onboardSubTitle,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );

  //welcome
  static var welcomeTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraLargeTextSize,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w700,
  );

  static var welcomeSubTitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );

  //default
  static var subTitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );
  //sign in

  static var appbarActionTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.smallTextSize,
    color: CustomColor.primaryColor,
    fontWeight: FontWeight.w500,
  );

  static var inputTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );
  static var phoneNumberTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize*0.9,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );

  static var defaultTitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w500,
  );

  static var addMorePetTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.defaultTextSize,
    color: CustomColor.whiteColor,
    fontWeight: FontWeight.w600,
  );

  //dashboard title
  static var dashboardtitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.defaultTextSize,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w600,
  );

  static var dashboardNameTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.smallTextSize * 1.05,
    color: CustomColor.primaryTextColor.withOpacity(0.7),
    fontWeight: FontWeight.w600,
  );

  static var dashboardSubNameTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.smallestTextSize,
    color: CustomColor.primaryTextColor.withOpacity(0.5),
    fontWeight: FontWeight.w500,
  );
  static var smallWhiteTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraSmallestTextSize,
    color: CustomColor.whiteColor,
    fontWeight: FontWeight.w600,
  );

  //our pets
  static var ourPetNameTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w600,
  );

  static var fromTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraSmallestTextSize,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );

  static var peopleNameTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraSmallestTextSize,
    color: CustomColor.primaryTextColor.withOpacity(0.7),
    fontWeight: FontWeight.w600,
  );

  static var reactPeopleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraSmallestTextSize * 1.04,
    color: CustomColor.primaryTextColor.withOpacity(0.5),
    fontWeight: FontWeight.w500,
  );

  //notification
  static var notificationTitleTextStyle = GoogleFonts.poppins(
      fontSize: Dimensions.mediumTextSize,
      color: CustomColor.primaryTextColor,
      fontWeight: FontWeight.w600);
      
  static var notificationSubTitleTextStyle = GoogleFonts.poppins(
      fontSize: Dimensions.extraSmallestTextSize,
      color: CustomColor.primaryTextColor..withOpacity(0.6),
      fontWeight: FontWeight.w500);

  static var notificationTimerTextStyle = GoogleFonts.roboto(
      fontSize: Dimensions.extraSmallestTextSize * 0.7,
      color: CustomColor.primaryTextColor.withOpacity(0.6),
      fontWeight: FontWeight.w400);

  //request for sitting title
  static var requestSittingTextTitle = GoogleFonts.poppins(
      fontSize: Dimensions.mediumTextSize,
      color: CustomColor.primaryTextColor,
      fontWeight: FontWeight.w600);

  //previw screen
  static var previewSubtitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize * 0.96,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );
  static var previewTotalTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize * 1.02,
    color: CustomColor.primaryTextColor.withOpacity(0.7),
    fontWeight: FontWeight.w600,
  );

  //request status
  static var requestCheckTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize * 1.02,
    color: CustomColor.primaryTextColor.withOpacity(0.4),
    fontWeight: FontWeight.w500,
  );

  //profile screen
  static var profiletitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize * 1.2,
    color: CustomColor.primaryTextColor.withOpacity(0.8),
    fontWeight: FontWeight.w600,
  );

  //pet profile
  static var popUpMenuTextstyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize * 1.2,
    color: CustomColor.primaryTextColor.withOpacity(0.6),
    fontWeight: FontWeight.w500,
  );

  //saved location
  static var savedLocationTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.smallTextSize,
    color: CustomColor.primaryTextColor.withOpacity(0.8),
    fontWeight: FontWeight.w600,
  );

  static var savedLocationSubTitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraSmallTextSize,
    color: CustomColor.primaryTextColor.withOpacity(0.8),
    fontWeight: FontWeight.w500,
  );

  //payment method

  static var paymentAddButtonTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.extraSmallTextSize,
    color: CustomColor.whiteColor,
    fontWeight: FontWeight.w600,
  );

  //our charges
    static var tableCollumnTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.smallestTextSize,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w600,
  );

   static var tableRowTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.smallestTextSize*0.8,
    color: CustomColor.primaryTextColor.withOpacity(0.8),
    fontWeight: FontWeight.w600,
  );

  //drawer 
   static var drawerTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.primaryTextColor.withOpacity(0.8),
    fontWeight: FontWeight.w600,
  );

  //service history
     static var serviceHistoryTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.mediumTextSize*0.93,
    color: CustomColor.primaryTextColor,
    fontWeight: FontWeight.w600,
  );

   static var serviceHistorysubTitleTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.smallestTextSize*0.9,
    color: CustomColor.secondaryTextColor,
    fontWeight: FontWeight.w500,
  );

}
