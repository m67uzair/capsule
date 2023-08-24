import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomTextCircle extends StatelessWidget {
  const CustomTextCircle({
    super.key,
    required this.text,
    this.textColor = AppColors.white,
    this.backGroundColor = AppColors.black,
  });

  final String text;
  final Color textColor;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backGroundColor,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(margin_10),
      child: CustomText(
        text: text,
        fontWeight: fontWeight600,
        fontSize: font_16,
        textColor: textColor,
      ),
    );
  }
}
