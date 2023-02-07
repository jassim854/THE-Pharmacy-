import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Color? filledColor;
  final EdgeInsets? scrollPading;
  final bool? obsecureText;
  final validator;
  const CustomTextFormField({
    Key? key,
    required this.hinttext,
    required this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.prefix,
    this.filledColor,
    this.scrollPading,
    this.obsecureText,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.075,
      child: TextFormField(
        minLines: 1,
        maxLines: 1,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        controller: controller,
        obscureText: obsecureText ?? false,
        decoration: InputDecoration(
            errorStyle: kTextField10ErrorShortStyle,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: prefixIcon,
            prefix: prefix,
            suffixIcon: suffixIcon,

            // contentPadding: EdgeInsets.only(top: height * 0.001, left: 10),
            hintText: hinttext,
            hintStyle: kTextField13LabelStyle,
            errorMaxLines: 1,
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorRed, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorRed, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorGrey),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.colorGrey),
            )),
        scrollPadding: scrollPading ?? const EdgeInsets.all(0),
      ),
    );
  }
}
