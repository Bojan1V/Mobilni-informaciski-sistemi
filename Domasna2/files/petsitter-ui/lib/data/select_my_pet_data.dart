import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/strings.dart';

import '../widgets/my_pets/select_pets.dart';

List<SelectPetWidget> petList = [
  const SelectPetWidget(
    img: Assets.bird,
    text: Strings.bird,
  ),
  const SelectPetWidget(
    img: Assets.cat,
    text: Strings.cat,
  ),
  const SelectPetWidget(
    img: Assets.welcomepet,
    text: Strings.dog,
  ),
  const SelectPetWidget(
    img: Assets.rat,
    text: Strings.rabbit,
  ),
  const SelectPetWidget(
    img: Assets.snake,
    text: Strings.reptile,
  ),
  const SelectPetWidget(
    img: Assets.tortoise,
    text: Strings.turtle,
  )
];
