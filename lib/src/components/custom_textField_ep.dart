import 'package:flutter/material.dart';

import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_divider.dart';

class CustomTextFieldEP extends StatelessWidget {
  CustomTextFieldEP({Key?key,
    required this.labelText,
     this.prefixIcon,
    this.suffixIcon,
    required this.obscure,
    required this.height,
    this.controller,
    this.onTap,
    this.readOnly,
    this.color,
    this.fillColor,
    this.lines,
  }): super(key:key);

  final String labelText;
  final Image? prefixIcon;
  final dynamic suffixIcon;
  final bool obscure;
  final bool? readOnly;
  final double height;
  final int? lines;
  final TextEditingController? controller;
  final Function()? onTap;
  final Color? color;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         // height: 85,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: color ?? AppColors.pinkGrade2, // Set your desired left border color here
                width: 2,
              ),
            ),
          ),
          child: TextFormField(
            maxLines: lines ?? null,
            onTap: onTap,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: color ?? AppColors.black,
            controller: controller,
            obscureText: obscure,
            style: TextStyle(color: AppColors.black, fontSize: font_12, fontWeight: fontWeight400, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              fillColor: fillColor ?? AppColors.pinkFillColor,
              filled: true,
              labelText: labelText,
              labelStyle: TextStyle(color: AppColors.black, fontSize: font_12, fontWeight: fontWeight400, fontFamily: 'OpenSans'),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(radius_10), topLeft: Radius.circular(radius_10)),
                borderSide: BorderSide(color: AppColors.transparent)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(radius_10), topLeft: Radius.circular(radius_10)),
                  borderSide: BorderSide(color: AppColors.transparent)
              ),
            ),
          ),
        ),
        CustomDivider(
          height: height,
          isDivider: false,
        ),
      ],
    );
  }
}