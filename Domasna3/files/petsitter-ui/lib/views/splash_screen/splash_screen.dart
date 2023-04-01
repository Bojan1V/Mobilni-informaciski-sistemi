import 'package:flutter/material.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/strings.dart';
import '../../utils/size.dart';
import '../../widgets/others/app_logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: crossCenter,
      children: [
        
        Container(),
        _appLogoWidget(context),
        _pogressIndicatorAppVersion(context),
      ],
    );
  }

  _appLogoWidget(BuildContext context) {
    return  Center(
      child: AppLogoWidget(
        height: MediaQuery.of(context).size.height*0.8,
        width: MediaQuery.of(context).size.width*0.8,
      ),
    );
  }


  _pogressIndicatorAppVersion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimensions.marginSize),
      child: Column(
        mainAxisAlignment: mainCenter,
        children: [
          const CircularProgressIndicator(
            backgroundColor: CustomColor.primaryColor,
            color: CustomColor.unSelectedColor,
          ),
          addVerticalSpace(15),
           Text('${Strings.version}${Strings.versionNow}',style: CustomStyle.appVersionTextStyle,),
        ],
      ),
    );
  }
}
