
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../routes/routes.dart';

class EmailVarificationController extends GetxController {
    final emailVarificationController = TextEditingController();


 

  void onPressEmailVarification() {
    Get.toNamed(
      Routes.congratulationScreen,
      arguments: {
        "isCongratulation":true,
        "subtitle": Strings.accountCreateSuccess,
      
      },
    );
  }


  bool hasError = false;

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  RxString currentText = "".obs;
  changeCurrentText(value) {
    currentText.value = value;
  }

  @override
  void dispose() {
    emailVarificationController.dispose();
    errorController!.close();
    timer?.cancel();
    super.dispose();
  }

  @override
  void onInit() {
    errorController = StreamController<ErrorAnimationType>();
    timerInit();
    super.onInit();
  }

  timerInit(){
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining.value != 0) {
        secondsRemaining.value--;
      } else {
        enableResend.value = true;
      }
    });
  }


  RxInt secondsRemaining = 60.obs;
  RxBool enableResend = false.obs;
  Timer? timer;

  resendCode() {
    secondsRemaining.value = 60;
    enableResend.value = false;
    timerInit();
  }


}
