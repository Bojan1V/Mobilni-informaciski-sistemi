import 'package:flutter/material.dart';
import 'package:petsitter/utils/custom_style.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';

class InputFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final Widget? widget;
  final VoidCallback? onTap;
  final String? labelText;
  final int? maxline;
  const InputFieldWidget(
      {Key? key,
      this.labelText,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.readOnly = false,
      this.backgroundColor,
      this.hintTextColor,
      this.maxline=1,
      
      this.widget,
      this.onTap})
      : super(key: key);

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
        Container(
          margin: EdgeInsets.only(top: Dimensions.heightSize * 0.5),
          padding: EdgeInsets.only(left: Dimensions.defaultPaddingSize * 0.8),
          height: Dimensions.inputBoxHeight * 1.1,
          decoration: BoxDecoration(
              border: Border.all(
                color: CustomColor.primaryColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.7)),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: TextFormField(
                  onTap: onTap,
                  maxLines: maxline,
                  readOnly: readOnly!,
                  controller: controller,
                  keyboardType: keyboardType,
                  autofocus: false,
                  cursorColor: CustomColor.primaryColor,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: CustomStyle.inputTextStyle,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: widget == null
                    ? Container()
                    : Container(
                      margin: EdgeInsets.only(right: Dimensions.marginSize*0.5),
                      child: widget),
              )
            ],
          ),
        ),
      ],
    );
  }
}
