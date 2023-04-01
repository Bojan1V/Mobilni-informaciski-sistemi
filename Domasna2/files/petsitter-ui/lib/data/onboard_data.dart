import 'package:petsitter/utils/strings.dart';
import '../model/onboard_model.dart';
import '../utils/assets.dart';

List<OnboardModel> onboardData = [
  OnboardModel(
      image: Assets.onboard1,
      title: Strings.onboardTile1,
      description: Strings.onboardSubTitle),
  OnboardModel(
      image: Assets.onboard2,
      title: Strings.onboardTile2,
      description: Strings.onboardSubTitle),
  OnboardModel(
    image: Assets.onboard3,
    title: Strings.onboardTile3,
    description: Strings.onboardSubTitle,
  ),
];
