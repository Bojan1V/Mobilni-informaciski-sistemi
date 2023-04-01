// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';
import '../../utils/dimensions.dart';

class PasswordInputWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final VoidCallback? onTap;
  final double borderWidth;

  const PasswordInputWidget({
    Key? key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.readOnly = false,
    this.backgroundColor,
    this.hintTextColor,
    this.onTap,
    this.borderWidth = 2,
    this.labelText,
  }) : super(key: key);

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  bool isVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.labelText == null
            ? Container()
            : Text(
                widget.labelText ?? '',
                style: CustomStyle.inputTextStyle,
              ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: Dimensions.inputBoxHeight*1.1,
            child: TextFormField(
              onTap: widget.onTap,
              maxLines: 1,
              readOnly: widget.readOnly!,
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              autofocus: false,
              obscureText: isVisibility,
              cursorColor: CustomColor.primaryColor,
              style: CustomStyle.inputTextStyle,
              decoration: InputDecoration(
                hintText: widget.hintText,
                suffixIcon: Padding(
                  padding:  EdgeInsets.only(right: Dimensions.defaultPaddingSize*0.6),
                  child: IconButton(
                    icon: Icon(
                      isVisibility == true
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: CustomColor.secondaryTextColor,
                    ),
                    onPressed: () {
                      setState(() {
                        isVisibility = !isVisibility;
                      });
                    },
                  ),
                ),
                contentPadding: EdgeInsets.only(left:Dimensions.defaultPaddingSize*0.8 ),
                fillColor: const Color(0xFFEBF0FE),
                hintStyle: CustomStyle.inputTextStyle,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: widget.borderWidth,
                    color: CustomColor.borderColor,
                  ),
                  borderRadius: BorderRadius.circular(
                      Dimensions.buttonBorderRadius * 0.7),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: widget.borderWidth,
                    color: CustomColor.borderColor,
                  ),
                  borderRadius: BorderRadius.circular(
                      Dimensions.buttonBorderRadius * 0.7),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      Dimensions.buttonBorderRadius * 0.7),
                  borderSide: BorderSide(
                    width: widget.borderWidth,
                    color: CustomColor.primaryColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(Dimensions.inputTextBorderRadius),
                  borderSide: BorderSide(
                    width: widget.borderWidth,
                    color: CustomColor.primaryColor,
                  ),
                ),
              ),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return null;
                } else {}
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}
