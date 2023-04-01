import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/drop_down_input.dart';
import 'package:petsitter/widgets/others/drop_down_widget.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../controller/change_langguage_controller.dart';
import '../../utils/custom_color.dart';

class ChangeLangguageScreen extends StatelessWidget {
  ChangeLangguageScreen({super.key});
  final controller = Get.put(ChangeLangguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.changeLanguage),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.defaultPaddingSize,
          horizontal: Dimensions.defaultPaddingSize),
      child: Column(
        children: [
          _inputWidget(context),
          _changeLangguageWidget(context),
        ],
      ),
    );
  }

  _inputWidget(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return DropDownInputWidget(
            labelText: Strings.changeLanguage,
            hintText: controller.selectMethod.value,
            widget: CustomDropDown(
                itemsList: controller.langguageList,
                selectMethod: controller.selectMethod),
          );
        }),
      ],
    );
  }

  _changeLangguageWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.defaultPaddingSize * 4),
      child: PrimaryButtonWidget(
          text: Strings.changeLanguage,
          onPressed: () {
            controller.onPressedChangeLangguage();
          }),
    );
  }
}
