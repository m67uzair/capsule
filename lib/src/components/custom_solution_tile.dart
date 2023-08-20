import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomSolutionTile extends StatelessWidget {
  const CustomSolutionTile({
    super.key,
    required this.solutionImagePath,
  });

  final String solutionImagePath;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: AppColors.pinkGrade2.withOpacity(0.10),
      collapsedBackgroundColor: AppColors.pinkGrade2.withOpacity(0.10),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius_10),
        ),
        side: BorderSide(width: width_1),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius_10),
        ),
        side: BorderSide(width: width_1),
      ),
      title: CustomText(
        text: 'Show Solution',
        fontWeight: fontWeight600,
        textColor: AppColors.black,
        fontSize: font_17,
      ),
      children: [
        Image.asset(
          solutionImagePath,
          width: width_250,
          height: height_250,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: height_15,
        ),
      ],
    );
  }
}