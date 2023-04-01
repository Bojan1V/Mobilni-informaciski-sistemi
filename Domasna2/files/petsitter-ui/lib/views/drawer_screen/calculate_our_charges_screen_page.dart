import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/drop_down_input.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/drop_down_widget.dart';

import '../../controller/drawer/calculate_our_charge_controller.dart';
import '../../utils/custom_color.dart';

class CalculateOurChargesScreen extends StatelessWidget {
  CalculateOurChargesScreen({Key? key}) : super(key: key);
  final controller = Get.put(CalculateOurChargeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(
        title: Strings.chargeCalculate,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Obx(() {
      return ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultPaddingSize,
            vertical: Dimensions.defaultPaddingSize * 0.5),
        children: [
          _dropDownInputWidget(context),
          _buttonWidget(context),
          _calculateInputWidget(context),
        ],
      );
    });
  }

  _dropDownInputWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        DropDownInputWidget(
          hintText: controller.petTypeSelectMethod.value,
          labelText: Strings.petType,
          widget: CustomDropDown(
            itemsList: controller.petTypeList,
            selectMethod: controller.petTypeSelectMethod,
          ),
        ),
        addVerticalSpace(Dimensions.heightSize * 0.8),

        //pet age
        DropDownInputWidget(
          hintText:controller.petAgeSelectMethod.value,
          labelText: Strings.petAge,
          widget: CustomDropDown(
            itemsList: controller.petAgeList,
            selectMethod: controller.petAgeSelectMethod,
          ),
        ),
        addVerticalSpace(Dimensions.heightSize * 0.8),

        //pet weight
        DropDownInputWidget(
          hintText:controller.petWeightSelectMethod.value,
          labelText: Strings.petWeight,
          widget: CustomDropDown(
            itemsList: controller.petWeightList,
            selectMethod: controller.petWeightSelectMethod,
          ),
        ),
        addVerticalSpace(Dimensions.heightSize * 0.8),

        //stitting type
        DropDownInputWidget(
         hintText:controller.petSittingTypeSelect.value,
          labelText: Strings.sitType,
          widget: CustomDropDown(
            itemsList: controller.petSittingTypeList,
            selectMethod: controller.petSittingTypeSelect,
          ),
        ),
        addVerticalSpace(Dimensions.heightSize * 0.8),

        //breed
        DropDownInputWidget(
           hintText:controller.petBreedSelectMethod.value,
          labelText: Strings.petBreed,
          widget: CustomDropDown(
            itemsList: controller.petBreedList,
            selectMethod: controller.petBreedSelectMethod,
          ),
        ),
      ],
    );
  }

  _buttonWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.marginSize * 1.8),
      child: PrimaryButtonWidget(
        text: Strings.calculateNow,
        onPressed: () {},
      ),
    );
  }

  _calculateInputWidget(BuildContext context) {
    return  DropDownInputWidget(
      controller: controller.chargeCalculateController,
      hintText: Strings.zero,
      labelText: Strings.chargeWilbePay,
    );
  }
}
