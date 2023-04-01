import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/strings.dart';

class PreviewController extends GetxController {
RxInt methodIndex=0.obs;

RxString selectMethod=Strings.cashOnService.obs;

  List <String> paymentMethodList=[
    Strings.cashOnService,
    Strings.onlinePayment,
  ];
  void onPressedPreviewContinue() {
    Get.toNamed(Routes.waitForApprovalScreen);
  }


    
 Completer<GoogleMapController> _controller = Completer();
 
    static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);




  // ignore: unused_element
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
