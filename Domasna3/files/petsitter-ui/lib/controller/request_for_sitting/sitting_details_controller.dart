import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/strings.dart';

class SittingDetailsController extends GetxController {
  final sittingLocationController = TextEditingController();
  final sittingTypeController = TextEditingController();
  final sittingFromDateController = TextEditingController();
  final sittingFromTimeController = TextEditingController();
  final sittingUpDateController = TextEditingController();
  final sittingUpTimeController = TextEditingController();
  final noteController = TextEditingController();

  
  RxInt selectValue = 1.obs;
  RxString selectMethod = Strings.selectSittingType.obs;
  RxString locationSelectMethod = Strings.selectSittingLocation.obs;
   List<String> locationMethod = [
    Strings.addHome,
    Strings.addOffice,
    "Another location",
  ];

  List<String> paymentMethod = [
    Strings.dayCare,
    Strings.nightCare,
    Strings.fullDay,
  ];
  var selectedDate = DateTime.now().obs;
  Future<void> selectDate() async {
    final DateTime? picked = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }

  var selectedTime = TimeOfDay.now().obs;

  Future<void> selectTime() async {
    // ignore: non_constant_identifier_names
    final TimeOfDay? picked_s = await showTimePicker(
      context: Get.context!,
      initialTime: selectedTime.value,
    );

    if (picked_s != null && picked_s != selectedTime.value) {
      selectedTime.value = picked_s;
  }
  }
  void onPressedContinueButton() {
    Get.toNamed(Routes.setPicupLocationScreen);
  }
}
