import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/button/primary_button.dart';
import 'package:petsitter/widgets/input/drop_down_input.dart';
import 'package:petsitter/widgets/input/input_field.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/custom_slider_widget.dart';
import '../../controller/request_for_sitting/sitting_details_controller.dart';
import '../../utils/custom_color.dart';
import '../../widgets/others/drop_down_widget.dart';
import 'package:intl/intl.dart';

class SittingDetailsScreen extends StatelessWidget {
  SittingDetailsScreen({super.key});
  final controller = Get.put(SittingDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(
        title: Strings.sittingDetails,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
      child: Obx(() {
        return ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _inputWidget(context),
            _continueButtonWidget(context),
            _customSliderWidget(context),
          ],
        );
      }),
    );
  }

  _inputWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        //Sitting Location
        addVerticalSpace(Dimensions.heightSize * 2),

        DropDownInputWidget(
            labelText: Strings.sittingLocation,
            hintText: controller.locationSelectMethod.value,
            widget: CustomDropDown(
              itemsList: controller.locationMethod,
              selectMethod: controller.locationSelectMethod,
            ),
          ),

        //Sitting Type
        addVerticalSpace(Dimensions.heightSize * 2),

        Obx(() {
          return DropDownInputWidget(
            labelText: Strings.sittingType,
            hintText: controller.selectMethod.value,
            widget: CustomDropDown(
              itemsList: controller.paymentMethod,
              selectMethod: controller.selectMethod,
            ),
          );
        }),

        //Sitting From Date Time Row
        addVerticalSpace(Dimensions.heightSize * 2),

        Row(
          children: [
            Expanded(
              child: InputFieldWidget(
                labelText: Strings.sittingUpto,
                controller: controller.sittingLocationController,
                hintText:DateFormat.yMd().format(controller.selectedDate.value),
                widget: GestureDetector(
                    onTap: () {
                      controller.selectDate();
                    },
                    child: SvgPicture.asset(Assets.calender)),
              ),
            ),
            addHorizontalSpace(Dimensions.widthSize),
            Expanded(
              child: InputFieldWidget(
                labelText: "",
                controller: controller.sittingUpDateController,
                hintText:"${controller.selectedTime.value.hour}:${controller.selectedTime.value.hour}",
                widget: GestureDetector(
                    onTap: () {
                      controller.selectTime();
                    },
                    child: SvgPicture.asset(Assets.clock,),),
              ),
            ),
          ],
        ),

        //Sitting Up Date Time Row
        addVerticalSpace(Dimensions.heightSize * 2),

        Row(
          children: [
            Expanded(
              child: InputFieldWidget(
                labelText: Strings.sittingUpto,
                controller: controller.sittingLocationController,
                hintText:  DateFormat.yMd().format(controller.selectedDate.value),
                widget: GestureDetector(
                    onTap: () {
                      controller.selectDate();
                    },
                    child: SvgPicture.asset(Assets.calender)),
              ),
            ),
            addHorizontalSpace(Dimensions.widthSize),
            Expanded(
              child: InputFieldWidget(
                labelText: "",
                controller: controller.sittingUpDateController,
                hintText:"${controller.selectedTime.value.hour}:${controller.selectedTime.value.hour}",
                widget: GestureDetector(
                    onTap: () {
                      controller.selectTime();
                    },
                    child: SvgPicture.asset(Assets.clock)),
              ),
            ),
          ],
        ),
        addVerticalSpace(Dimensions.heightSize * 2),

  //maxlines textfield
       TextFormField(
        maxLines: 4,
        decoration: InputDecoration(
          
          hintText: Strings.writeHere,
          hintStyle: CustomStyle.inputTextStyle,
          contentPadding: EdgeInsets.only(
                      top: Dimensions.defaultPaddingSize*0.6,
                      left:Dimensions.defaultPaddingSize*0.8,
                      right:Dimensions.defaultPaddingSize*0.8),
                  
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: CustomColor.primaryColor),
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius*0.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: CustomColor.primaryColor),
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius*0.7),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius*0.7),
                    borderSide: BorderSide(
                        width: 2, color: CustomColor.primaryColor),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius*0.7),
                    borderSide: BorderSide(
                        width: 2, color: CustomColor.primaryColor),
                  ),

        ),
       )
      ],
    );
  }

  _continueButtonWidget(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize * 1.4),
      child: PrimaryButtonWidget(
        text: Strings.continues,
        onPressed: () {
          controller.onPressedContinueButton();
        },
      ),
    );
  }

  _customSliderWidget(BuildContext context) {
    return  CustomSliderWidget(value: 30, text: Strings.sittingDetails);
  }
}
