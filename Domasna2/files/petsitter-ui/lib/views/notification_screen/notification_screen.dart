import 'package:flutter/material.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import '../../utils/custom_color.dart';
import '../../widgets/others/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.notifications),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        NotificatinWidget(
          img: Assets.petLeg,
          title: Strings.whyDoWe,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
        NotificatinWidget(
          img: Assets.dogBreeds,
          title: Strings.requestAccept,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
        NotificatinWidget(
          img: Assets.petLeg,
          title: Strings.whyDoWe,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
        NotificatinWidget(
          img: Assets.blackCat,
          title: Strings.requestAccept,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
        NotificatinWidget(
          img: Assets.petLeg,
          title: Strings.whyDoWe,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
        NotificatinWidget(
          img: Assets.petLeg,
          title: Strings.whyDoWe,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
        NotificatinWidget(
          img: Assets.petLeg,
          title: Strings.whyDoWe,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
        NotificatinWidget(
          img: Assets.petLeg,
          title: Strings.whyDoWe,
          subTitle: Strings.notificationDetails,
          date: Strings.date,
          time: Strings.time,
        ),
      ],
    );
  }
}
