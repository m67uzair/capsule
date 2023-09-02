import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_weight.dart';

class CustomSubjects extends StatelessWidget {
  const CustomSubjects({Key?key,
    required this.imageAsset,
    required this.subjectText,
    this.onTap,

  }):super(key:key);

  final String imageAsset;
  final String subjectText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 320,
          width: 100,
          decoration: BoxDecoration(
            color: AppColors.pinkFillColor,
            border: Border.all(color: AppColors.pinkGrade2, width: 2),
            borderRadius: BorderRadius.circular(radius_15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(imageAsset), height: 50,),
              CustomDivider(
                height: 10,
              ),
              CustomText(
                  text: subjectText,
                  color1: AppColors.pinkGrade2,
                  fontWeight: fontWeight700,
                  fontSize: font_15)
            ],
          ),
        ),
      ),
    );
  }
}
