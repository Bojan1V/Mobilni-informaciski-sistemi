import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/size.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/input/drop_down_input.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/drop_down_widget.dart';
import '../../controller/profile_controller/pet_profile_controller.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../widgets/button/primary_button.dart';
import '../../widgets/input/input_field.dart';
import 'package:intl/intl.dart';

class PetProfileScreen extends StatelessWidget {
  PetProfileScreen({super.key});
  final controller = Get.put(PetProfileController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      extendBodyBehindAppBar: true,
      appBar: _customAppbar(context),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Obx(() {
      return SingleChildScrollView(
        child: Column(
          children: [
            _imgPickerWidget(context),
            _inputFieldWidget(context),
            _updateButtonWidget(context),
          ],
        ),
      );
    });
  }

  _imgPickerWidget(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: CustomColor.secondearyColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(350, 140),
                bottomRight: Radius.elliptical(350, 140),
              ),
            )),
        Positioned(
          top: Dimensions.marginSize * 8,
          child: CircleAvatar(
            radius: Dimensions.radius * 7.2,
            backgroundColor: CustomColor.screenBGColor,
            child: CircleAvatar(
              backgroundImage: const AssetImage(Assets.minidog),
              radius: Dimensions.radius * 6.5,
            ),
          ),
        ),
      ],
    );
  }

  _customAppbar(BuildContext context) {
    return CustomAppBar(
      bgColor: CustomColor.transparent,
      title: Strings.petProfile,
      actions: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius * 1.5)),
          child: PopupMenuButton<int>(
            offset: Offset(2.0, 60.0),
            icon: new Icon(Icons.more_vert, color: Colors.black),
            position: PopupMenuPosition.over,
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: GestureDetector(
                    onTap: () {
                      controller.changeStatus();
                    },
                    child: Text(
                      Strings.updateProfile,
                      style: CustomStyle.popUpMenuTextstyle,
                    ),
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Text(
                    Strings.remove,
                    style: CustomStyle.popUpMenuTextstyle,
                  )),
            ],
            color: CustomColor.screenBGColor,
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.5)),
          ),
        ),
      ],
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: Dimensions.defaultPaddingSize,
        left: Dimensions.defaultPaddingSize,
        top: Dimensions.defaultPaddingSize * 3,
      ),
      child: Column(
        children: [
          InputFieldWidget(
            controller: controller.petNameController,
            hintText: Strings.grigioCham,
            labelText: Strings.petName,
          ),
          addVerticalSpace(Dimensions.heightSize),
          DropDownInputWidget(
            controller: controller.petGenderController,
            hintText: controller.selectGender.value,
            labelText: Strings.petGender,
            widget: Visibility(
             visible: controller.isVisible.value == true ? true : false,
              child: CustomDropDown(
                  itemsList: controller.genderList,
                  selectMethod: controller.selectGender),
            ),
          ),
          addVerticalSpace(Dimensions.heightSize),
          InputFieldWidget(
            controller: controller.petTypeController,
            hintText: Strings.dog,
            labelText: Strings.petType,
          ),
          addVerticalSpace(Dimensions.heightSize),
          InputFieldWidget(
            controller: controller.petBreedController,
            hintText: Strings.aegean,
            labelText: Strings.petBreed,
          ),
          addVerticalSpace(Dimensions.heightSize),
          Row(
            children: [
              Expanded(
                child: InputFieldWidget(
                  labelText: Strings.sittingUpto,
                  controller: controller.dateOfBithController,
                  hintText:
                      DateFormat.yMd().format(controller.selectedDate.value),
                  widget: GestureDetector(
                      onTap: () {
                        controller.selectDate();
                      },
                      child: Visibility(
                       visible: controller.isVisible.value == true ? true : false,
                        child: SvgPicture.asset(Assets.calender),
                      )),
                ),
              ),
              addHorizontalSpace(Dimensions.widthSize * 2),
              Expanded(
                child: DropDownInputWidget(
                  controller: controller.petWeightController,
                  hintText: controller.petWeightSelectMethod.value,
                  labelText: Strings.petWeight,
                  widget: Visibility(
                   visible: controller.isVisible.value == true ? true : false,
                    child: CustomDropDown(
                        itemsList: controller.petWeightList,
                        selectMethod: controller.petWeightSelectMethod),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _updateButtonWidget(BuildContext context) {
    return Visibility(
      visible: controller.isVisible.value == true ? true : false,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultPaddingSize,
            vertical: Dimensions.marginSize * 2),
        child: PrimaryButtonWidget(
          text: Strings.update,
          onPressed: () {
            controller.onPressedUpdate();
          },
        ),
      ),
    );
  }
}
