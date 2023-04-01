import 'package:flutter/material.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

import '../../widgets/dashboard/community_see_more_widget.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.community),
      body: _bodyWidget(context),
    );
  }
  
  _bodyWidget(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        CommunitySeeMore(
          img: Assets.breedMan,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.merryChris,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.stylish,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.prichionarMan,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
        CommunitySeeMore(
          img: Assets.breedMan,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.merryChris,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.stylish,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.prichionarMan,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ), CommunitySeeMore(
          img: Assets.breedMan,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.merryChris,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.stylish,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),
         CommunitySeeMore(
          img: Assets.prichionarMan,
          tile: Strings.userName,
          subTile: Strings.emailAddress,
        ),

      ],
    );
  }
}