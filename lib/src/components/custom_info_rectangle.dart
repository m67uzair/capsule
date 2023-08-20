import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomInfoRectangle extends StatelessWidget {
  const CustomInfoRectangle({
    super.key,
    required this.title,
    required this.iconPath,
    required this.subTitle,
  });

  final String title;
  final String iconPath;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: width_155,
        padding: EdgeInsets.all(margin_10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: AppColors.pinkGrade2),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath),
            SizedBox(width: width_5),
            Column(
              children: [
                CustomText(
                  text: title,
                  color1: AppColors.black,
                  fontSize: font_17,
                  fontWeight: fontWeight500,
                ),
                CustomText(
                  text: subTitle,
                  color1: AppColors.black,
                  fontSize: font_17,
                  fontWeight: fontWeight700,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
