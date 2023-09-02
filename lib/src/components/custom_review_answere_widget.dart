import 'package:capsule/src/components/custom_mcq_option.dart';
import 'package:capsule/src/components/custom_rectangle_icon_button.dart';
import 'package:capsule/src/components/custom_solution_tile.dart';
import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class ReviewQuestionWidget extends StatelessWidget {
  const ReviewQuestionWidget({
    super.key,
    required this.questionIndex,
    required this.optionA,
    required this.optionB,
    required this.optionC,
    required this.optionD,
    required this.questionString,
    required this.solutionImagePath,
    this.questionImagePath,
    this.optionAImage,
    this.optionBImage,
    this.optionCImage,
    this.optionDImage,
  });

  final int questionIndex;
  final String questionString;
  final String? questionImagePath;
  final String solutionImagePath;
  final String optionA;
  final String optionB;
  final String optionC;
  final String optionD;

  final String? optionAImage;
  final String? optionBImage;
  final String? optionCImage;
  final String? optionDImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: width_2),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius_10),
      ),
      child: Column(
        children: [
          Container(
            color: AppColors.pinkGrade2.withOpacity(0.10),
            padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(margin_10),
                  decoration: const BoxDecoration(color: AppColors.pinkGrade2, shape: BoxShape.circle),
                  child: CustomText(
                    text: 'Q$questionIndex',
                    fontWeight: fontWeight600,
                    fontSize: font_17,
                    textColor: AppColors.white,
                  ),
                ),
                Row(
                  children: [
                    RectangleIconButton(
                      onPressed: () {},
                      iconImagePath: ImgAssets.bookmark2,
                    ),
                    SizedBox(width: width_5),
                    RectangleIconButton(
                      onPressed: () {},
                      iconImagePath: ImgAssets.infoCircle,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: height_15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            child: Column(
              children: [
                CustomText(
                  text: questionString,
                  fontWeight: fontWeight600,
                  fontSize: font_16,
                  textColor: AppColors.black,
                  maxLines: 3,
                ),
                SizedBox(
                  height: height_15,
                ),
                if (questionImagePath != null)
                  Image.asset(
                    questionImagePath.toString(),
                    width: width_240,
                    height: height_240,
                    fit: BoxFit.cover,
                  )
                else
                  const SizedBox.shrink(),
                SizedBox(
                  height: height_25,
                ),
                CustomMCQOptions(
                    optionA: optionA,
                    optionB: optionB,
                    optionC: optionC,
                    optionD: optionD,
                    optionAImage: optionAImage,
                    optionBImage: optionBImage,
                    optionCImage: optionCImage,
                    optionDImage: optionDImage),
                SizedBox(
                  height: height_25,
                ),
                CustomSolutionTile(
                  solutionImagePath: solutionImagePath,
                ),
                SizedBox(
                  height: height_15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
