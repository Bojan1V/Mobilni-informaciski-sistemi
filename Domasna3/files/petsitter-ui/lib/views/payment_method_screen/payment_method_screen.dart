import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';
import 'package:petsitter/widgets/profile_widget/payment_method_widget.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(title: Strings.paymentMethod),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Column(
      children:  [
        InkWell(
          onTap: (){
            Get.toNamed(Routes.addPaymentMethodScreen);
          },
          child: const PaymentMethodListtileWidget(
            img: Assets.cashmall,
            title: Strings.cashMall,
            subTitle: Strings.addAccount,
            color: CustomColor.primaryColor,
            buttonText: Strings.add,
          ),
        ),
         InkWell(
          onTap: (){
         Get.toNamed(Routes.editPaymentMethodScreen);
          },
           child: const PaymentMethodListtileWidget(
            img: Assets.paytm,
            title: Strings.paytm,
            subTitle: Strings.aderson54,
            color: CustomColor.paymentButtonColor,
            buttonText: Strings.edit,
                 ),
         ),


      
        const PaymentMethodListtileWidget(
          img: Assets.payoneer,
          title: Strings.payoneer,
          subTitle: Strings.addAccount,
          color: CustomColor.primaryColor,
          buttonText: Strings.add,
        ),
       
        const PaymentMethodListtileWidget(
          img: Assets.skrill,
          title: Strings.skrill,
          subTitle: Strings.sam21,
          color: CustomColor.paymentButtonColor,
          buttonText: Strings.edit,
        ),
      ],
    );
  }
}
