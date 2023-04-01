import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:petsitter/routes/routes.dart';
import 'package:petsitter/utils/assets.dart';
import 'package:petsitter/utils/custom_color.dart';
import 'package:petsitter/utils/custom_style.dart';
import 'package:petsitter/utils/dimensions.dart';
import 'package:petsitter/utils/strings.dart';
import 'package:petsitter/widgets/others/custom_appbar.dart';

class OurChargesScreen extends StatelessWidget {
  const OurChargesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      appBar: CustomAppBar(
        title: Strings.ourCharges,
        actions: [
          Padding(
            padding:
                EdgeInsets.only(right: Dimensions.defaultPaddingSize * 0.7),
            child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.calculateOurChargesScreen);
                },
                child: SvgPicture.asset(Assets.calculator)),
          )
        ],
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              DataTable(
                columns: [
                  DataColumn(
                    label: Center(
                      child: Text(
                        Strings.petType,
                        textAlign: TextAlign.center,
                        style: CustomStyle.tableCollumnTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text(
                        Strings.ages,
                        textAlign: TextAlign.center,
                        style: CustomStyle.tableCollumnTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text(
                        Strings.weights,
                        textAlign: TextAlign.center,
                        style: CustomStyle.tableCollumnTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text(
                        Strings.sitType,
                        textAlign: TextAlign.center,
                        style: CustomStyle.tableCollumnTextStyle,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Center(
                      child: Text(
                        Strings.charge,
                        textAlign: TextAlign.center,
                        style: CustomStyle.tableCollumnTextStyle,
                      ),
                    ),
                  ),
                ],

                //table data row 1
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.cat,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.oneto6,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onefivekg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.dayCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 2
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.cat,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onetoyear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fiveTenKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.nightCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 3
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.cat,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.twoFiveYear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.tentowentyKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fullDay,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us30,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 4

                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.dog,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.oneto6,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onefivekg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.dayCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 5
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.dog,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onetoyear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fiveTenKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.nightCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 6
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.dog,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.twoFiveYear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.tentowentyKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fullDay,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us30,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 7

                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.rabbit,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.oneto6,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onefivekg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.dayCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 8
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.rabbit,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onetoyear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fiveTenKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.nightCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 9
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.rabbit,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.twoFiveYear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.tentowentyKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fullDay,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us30,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 13

                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.turtle,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.oneto6,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onefivekg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.dayCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 14
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.turtle,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onetoyear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fiveTenKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.nightCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 15
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.turtle,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.twoFiveYear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.tentowentyKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fullDay,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us30,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.reptile,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.oneto6,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onefivekg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.dayCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 11
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.reptile,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.onetoyear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fiveTenKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.nightCare,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us15,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),

                  //table data row 12
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          Strings.reptile,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.twoFiveYear,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.tentowentyKg,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.fullDay,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                      DataCell(
                        Text(
                          Strings.us30,
                          style: CustomStyle.tableRowTextStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
