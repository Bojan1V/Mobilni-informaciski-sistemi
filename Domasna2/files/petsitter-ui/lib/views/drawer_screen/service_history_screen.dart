import 'package:flutter/material.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/others/service_history_widget.dart';

class ServiceHistoryScreen extends StatelessWidget {
  const ServiceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.serviceHistory),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children:  const [
        ServiceHistoryWidget(
          img: Assets.minidog,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.primaryColor,
          buttonTx: Strings.approved,
        ),
          ServiceHistoryWidget(
          img: Assets.dogBreeds,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.alertColor,
          buttonTx: Strings.rejected,
        ),

          ServiceHistoryWidget(
          img: Assets.catDog,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.primaryColor,
          buttonTx: Strings.approved,
        ),

          ServiceHistoryWidget(
          img: Assets.blackCat,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.paymentButtonColor,
          buttonTx: Strings.pending,
        ),

          ServiceHistoryWidget(
          img: Assets.minicat,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.primaryColor,
          buttonTx: Strings.approved,
        ),

          ServiceHistoryWidget(
          img: Assets.minidog,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.primaryColor,
          buttonTx: Strings.approved,
        ),  ServiceHistoryWidget(
          img: Assets.minidog,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.primaryColor,
          buttonTx: Strings.approved,
        ),  ServiceHistoryWidget(
          img: Assets.minidog,
          nameTx: Strings.nameGrigioCham,
          ageTx: Strings.ageYear,
          weightTx: Strings.weightKg,
          buttonColor: CustomColor.primaryColor,
          buttonTx: Strings.approved,
        ),
      ],
    );
  }
}
