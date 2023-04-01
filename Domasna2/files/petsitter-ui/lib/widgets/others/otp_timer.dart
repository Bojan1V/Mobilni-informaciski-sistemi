import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/assets.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class OtpTimer extends StatefulWidget {
  const OtpTimer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OtpTimerState createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  int secondsRemaining = const Duration(minutes: 2) as int;
  bool enableResend = false;
  Timer? timer;

  @override
  initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainCenter,
      children: <Widget>[
        secondsRemaining == const Duration(minutes: 2) as int
            ? Row(
                mainAxisAlignment: mainCenter,
                children: [
                  SvgPicture.asset(
                    Assets.clock,
                    height: 20,
                    // ignore: deprecated_member_use
                    color: CustomColor.primaryColor,
                  ),
                  addHorizontalSpace(Dimensions.widthSize),
                ],
              )
            : Container(),
      ],
    );
  }

  // ignore: unused_element
  void _resendCode() {
    setState(() {
      secondsRemaining = const Duration(minutes: 2) as int;
    });
  }

  @override
  dispose() {
    timer!.cancel();
    super.dispose();
  }
}
