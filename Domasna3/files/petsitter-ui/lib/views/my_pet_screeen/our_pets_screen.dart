import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import '../../controller/my_pet/our_pet_screen_controller.dart';
import '../../utils/custom_color.dart';
import '../../widgets/our_pets_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurPetsScreen extends StatelessWidget {
  OurPetsScreen({super.key});

  final controller = Get.put(OutPetsScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.ourPet),
      body: Obx(() {
        return _bodyWidget(context);
      }),
    );
  }

  _bodyWidget(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultPaddingSize * 0.8),
        child: ListView.builder(
            itemCount: controller.ourPetList.length,
            itemBuilder: (context, index) {
              return OurPetWidget(
                petimg: controller.ourPetList[index].petimg,
                petText: controller.ourPetList[index].petText,
                fromText: controller.ourPetList[index].fromText,
                peopleText: controller.ourPetList[index].peopleText,
                peopleImg: controller.ourPetList[index].peopleImg,
                reactText: controller.ourPetList[index].reactText,
                widget: InkWell(
                  onTap: () {
                    controller.ourPetList[index].isFavorite.toggle();
                  },
                  child: controller.ourPetList[index].isFavorite.value
                      ? SvgPicture.asset(Assets.fillHeart, height: 18)
                      : SvgPicture.asset(Assets.unfillheart, height: 18),
                ),
              );
            }));
  }
}
