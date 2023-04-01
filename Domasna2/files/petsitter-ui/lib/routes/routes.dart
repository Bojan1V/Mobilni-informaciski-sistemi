import 'package:get/get.dart';
import 'package:petsitter/views/auth/forget_password_screen.dart';
import 'package:petsitter/views/auth/otp_screen.dart';
import 'package:petsitter/views/auth/reset_password_controller.dart';
import 'package:petsitter/views/congratulations/congratulation.dart';
import 'package:petsitter/views/notification_screen/notification_screen.dart';
import 'package:petsitter/views/my_pet_screeen/mypet_info_screen.dart';
import 'package:petsitter/views/onboard_screen/onboard_screen.dart';
import 'package:petsitter/views/splash_screen/splash_screen.dart';
import 'package:petsitter/views/welcome_screen/welcome_screen.dart';
import '../controller/splash/splash_controller.dart';
import '../views/auth/email_varification.dart';
import '../views/auth/sign_in_screen.dart';
import '../views/auth/sign_up_screen.dart';
import '../views/commuinity/community_screen.dart';
import '../views/dashboard_screen/dashboard_screen.dart';
import '../views/drawer_screen/calculate_our_charges_screen_page.dart';
import '../views/drawer_screen/our_charges_screen.dart';
import '../views/drawer_screen/service_history_screen.dart';
import '../views/my_pet_screeen/our_pets_screen.dart';
import '../views/my_pet_screeen/default_mypets_screen.dart';
import '../views/my_pet_screeen/initial_mypets_screen.dart';
import '../views/my_pet_screeen/mypets_type_screen.dart';
import '../views/navigation_screen/bottom_navigation_bar.dart';
import '../views/payment_method_screen/add_payment_method_screen.dart';
import '../views/payment_method_screen/edit_payment_method.dart';
import '../views/profile_screen/change_langguage_screen.dart';
import '../views/profile_screen/change_password_screen.dart';
import '../views/profile_screen/edi_profile_screen.dart';
import '../views/profile_screen/my_pets_screen.dart';
import '../views/payment_method_screen/payment_method_screen.dart';
import '../views/profile_screen/pet_profile_screen.dart';
import '../views/profile_screen/profile_screen.dart';
import '../views/profile_screen/saved_location_screen.dart';
import '../views/request_for_sitting_screen/pet_selecting_screen.dart';
import '../views/request_for_sitting_screen/preview_screen.dart';
import '../views/request_for_sitting_screen/request_status_screen.dart';
import '../views/request_for_sitting_screen/request_setting_saved_location_screen.dart';
import '../views/request_for_sitting_screen/set_picup_location_screen.dart';
import '../views/request_for_sitting_screen/sitting_details_screen.dart';
import '../views/request_for_sitting_screen/wait_for_approval_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpScreen = '/signUnScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String otpScreen = '/otpScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String congratulationScreen = '/congratulationScreen';
  static const String emailVarificatonScreen = '/emailVarificatonScreen';
  static const String defaultMyPetScreen = '/defaultMyPetScreen';
  static const String myPetsTypeScreen = '/myPetsTypeScreen';
  static const String myPetsInfoScreen = '/myPetsInfoScreen';
  static const String initialMyPetsScreen = '/initialMyPetsScreen';
  static const String dashboardScreen = '/dashboardScreen';
  static const String bottomNavBar = '/bottomNavBar';
  static const String ourPetsScreen = '/ourPetsScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String petSelectingScreen = '/petSelectingScreen';
  static const String sittingDetailsScreen = '/sittingDetailsScreen';
  static const String setPicupLocationScreen = '/setPicupLocationScreen';
  static const String paymentDefaultScteen = '/paymentDefaultScteen';
  static const String requestSettingSavedLocationScreen =
      '/requestSettingSavedLocationScreen';
  static const String previewScreen = '/PreviewScreen';
  static const String waitForApprovalScreen = '/waitForApprovalScreen';
  static const String requestStatusScreen = '/requestStatusScreen';
  static const String profileScreen = '/profileScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String myPetsScreen = '/myPetsScreen';
  static const String petProfileScreen = '/petProfileScreen';
  static const String savedLocationScreen = '/savedLocationScreen';
  static const String paymentMethodScreen = '/paymentMethodScreen';
  static const String addPaymentMethodScreen = '/addPaymentMethodScreen';
  static const String editPaymentMethodScreen = '/editPaymentMethodScreen';
  static const String changeLangguageScreen = '/changeLangguageScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String ourChargesScreen = '/ourChargesScreen';
  static const String calculateOurChargesScreen = '/calculateOurChargesScreen';
  static const String serviceHistoryScreen = '/serviceHistoryScreen';
  static const String communityScreen = '/communityScreen';

  static var list = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(() {
        Get.put(
          SplashController(),
        );
      }),
    ),
    GetPage(
      name: onboardScreen,
      page: () => OnboardScreen(),
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: signInScreen,
      page: () => SingInScreen(),
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
    ),
    GetPage(
      name: congratulationScreen,
      page: () => CongratulationScreen(),
    ),
    
    GetPage(
      name: emailVarificatonScreen,
      page: () => EmailVarificatonScreen(),
    ),
    GetPage(
      name: defaultMyPetScreen,
      page: () =>  DefaultMyPetScreen(),
    ),
    GetPage(
      name: myPetsTypeScreen,
      page: () => const MyPetsTypeScreen(),
    ),
    GetPage(
      name: myPetsInfoScreen,
      page: () => MyPetInfoScreen(),
    ),
    GetPage(
      name: initialMyPetsScreen,
      page: () => InitialMyPetsScreen(),
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
    ),
    GetPage(
      name: bottomNavBar,
      page: () => BottomNavBarScreen(),
    ),
    GetPage(
      name: ourPetsScreen,
      page: () =>  OurPetsScreen(),
    ),
    GetPage(
      name: notificationScreen,
      page: () => const NotificationScreen(),
    ),
    GetPage(
      name: petSelectingScreen,
      page: () => PetSelectingScreen(),
    ),
    GetPage(
      name: sittingDetailsScreen,
      page: () => SittingDetailsScreen(),
    ),
    GetPage(
      name: setPicupLocationScreen,
      page: () => SetPicupLocationScreen(),
    ),
    GetPage(
      name: requestSettingSavedLocationScreen,
      page: () => RequestSettingSavedLocationScreen(),
    ),
    GetPage(
      name: previewScreen,
      page: () => PreviewScreen(),
    ),
    GetPage(
      name: waitForApprovalScreen,
      page: () => WaitForApprovalScreen(),
    ),
    GetPage(
      name: requestStatusScreen,
      page: () => const RequestStatusScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
    ),
    GetPage(
      name: myPetsScreen,
      page: () => const MyPetsScreen(),
    ),
    GetPage(
      name: petProfileScreen,
      page: () => PetProfileScreen(),
    ),
    GetPage(
      name: savedLocationScreen,
      page: () => const SavedLocationScreen(),
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => const PaymentMethodScreen(),
    ),
    GetPage(
      name: addPaymentMethodScreen,
      page: () => AddPaymentMethodScreen(),
    ),
    GetPage(
      name: editPaymentMethodScreen,
      page: () => EditPaymentMethodScreen(),
    ),
    GetPage(
      name: changeLangguageScreen,
      page: () => ChangeLangguageScreen(),
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
    ),
    GetPage(
      name: ourChargesScreen,
      page: () => const OurChargesScreen(),
    ),
    GetPage(
      name: calculateOurChargesScreen,
      page: () => CalculateOurChargesScreen(),
    ),
    GetPage(
      name: serviceHistoryScreen,
      page: () => const ServiceHistoryScreen(),
    ),

    GetPage(
      name: communityScreen,
      page: () =>  CommunityScreen(),
    ),
  ];
}
