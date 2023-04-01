import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/views/dashboard_screen/dashboard_screen.dart';

import '../views/profile_screen/profile_screen.dart';

class BottomNavBarController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final List page = [
   DashboardScreen(),
   ProfileScreen(),
  
  ];
  void selectedPage(int index) {
    selectedIndex.value = index;
  }

  void onPressedMidIcon() {
   Get.toNamed(Routes.petSelectingScreen);
  }

  void onPressedNotification() {
    Get.toNamed(Routes.notificationScreen);
  }

  void onPressedMenuIcon() {}
  
  
}