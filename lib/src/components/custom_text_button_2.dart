import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomTextButton2 extends StatelessWidget {
  const CustomTextButton2({
    super.key,
    required this.title,
    required this.onPressed,
    this.bgColor = AppColors.pinkGrade2,
    this.textColor = AppColors.white,
  });

  final String title;
  final Function() onPressed;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: margin_20, vertical: margin_15),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(radius_25),
        )),
      ),
      onPressed: onPressed,
      child: CustomText(
        text: title,
        textColor: textColor,
        fontWeight: fontWeight600,
        fontSize: font_17,
      ),
    );
  }
}
