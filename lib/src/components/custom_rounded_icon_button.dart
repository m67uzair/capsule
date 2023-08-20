import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';
class CustomRoundedIconButton extends StatelessWidget {
  const CustomRoundedIconButton({
    super.key,
    required this.onPressed,
    required this.iconImagePath,
    required this.title,
  });

  final Function() onPressed;
  final String iconImagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(iconImagePath),
          SizedBox(height: height_5),
          CustomText(
            color1: AppColors.black,
            text: title,
            fontWeight: fontWeight600,
            fontSize: font_16,
          ),
        ],
      ),
    );
  }
}
