import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';

import '../../utilis/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.backGroundColor,
    this.child,
    this.side,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String? text;
  final Color? backGroundColor;
  final Widget? child;
  final BorderSide? side;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 42),
            shape: RoundedRectangleBorder(
                side: side ?? BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            backgroundColor: backGroundColor ?? AppColor.colorBlue),
        onPressed: onPressed,
        child: child ?? Text(text ?? '', style: kButtonWhite18TextStyle));
  }
}
