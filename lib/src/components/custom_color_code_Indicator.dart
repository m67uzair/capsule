import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomColorCodeIndicator extends StatelessWidget {
  const CustomColorCodeIndicator({
    super.key,
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: height_10,
          width: width_10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: width_4,
        ),
        CustomText(
          text: title,
          color1: AppColors.black,
          fontWeight: fontWeight600,
          fontSize: font_17,
        ),
      ],
    );
  }
}
