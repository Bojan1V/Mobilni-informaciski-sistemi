import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RateUsController extends GetxController {
final reiewController=TextEditingController();
@override
  void dispose() {
    
    reiewController.dispose();
    super.dispose();
  }
}