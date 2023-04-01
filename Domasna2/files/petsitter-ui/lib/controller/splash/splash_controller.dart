import 'dart:async';
import 'package:get/get.dart';
import '../../routes/routes.dart';



class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _goToScreen();
  }

  _goToScreen() async {
    Timer(
       const Duration(seconds: 3),(){
        Get.offAndToNamed(Routes.onboardScreen);
      }
    );
  }
}
