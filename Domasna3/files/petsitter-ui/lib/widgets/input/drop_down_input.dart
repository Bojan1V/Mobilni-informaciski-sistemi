import 'package:flutter/material.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class DropDownInputWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final double? maxlines;
  final Widget? widget;
  final VoidCallback? onTap;
  final double borderWidth;
  final String? labelText;

  const DropDownInputWidget({
    Key? key,
    this.controller,
    this.labelText,
    required this.hintText,
    this.keyboardType,
    this.readOnly = false,
    this.backgroundColor,
    this.hintTextColor,
    this.widget,
    this.onTap,
    this.maxlines = 1,
    this.borderWidth = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText == null
            ? Container()
            : Text(
                labelText ?? '',
                style: CustomStyle.requestSittingTextTitle,
              ),
        Padding(
          padding: EdgeInsets.only(
            top: 5,
          ),
          child: Container(
            height: Dimensions.buttonHeight * 0.94,
            child: TextFormField(
              onTap: onTap,
              maxLines: 1,
              readOnly: readOnly!,
              controller: controller,
              keyboardType: keyboardType,
              autofocus: false,
              cursorColor: CustomColor.primaryColor,
              style: CustomStyle.inputTextStyle,
              decoration: InputDecoration(
                  hintText: hintText,
                  contentPadding: EdgeInsets.only(
                      left: Dimensions.defaultPaddingSize,
                      right: Dimensions.defaultPaddingSize * 0.6),
                  hintStyle: CustomStyle.inputTextStyle,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: borderWidth, color: CustomColor.primaryColor),
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius * 0.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: borderWidth, color: CustomColor.primaryColor),
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius * 0.7),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius * 0.7),
                    borderSide: BorderSide(
                        width: borderWidth, color: CustomColor.primaryColor),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius * 0.7),
                    borderSide: BorderSide(
                        width: borderWidth, color: CustomColor.primaryColor),
                  ),
                  suffixIcon: widget == null
                      ? const Text('')
                      : Padding(
                          padding: EdgeInsets.only(
                            right: Dimensions.defaultPaddingSize * 0.5,
                            left: Dimensions.defaultPaddingSize * 0.25,
                          ),
                          child: Container(child: widget),
                        )),
              // validator: (String? value) {
              //   if (value!.isEmpty) {
              //     return null;
              //   } else {
              //     return Strings.abyssinian;
              //   }
              // },
            ),
          ),
        ),
      ],
    );
  }
}
