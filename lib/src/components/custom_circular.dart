import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../core/constants/font_weight.dart';

class CustomCircular extends StatelessWidget {
  const CustomCircular({Key?key,
    required this.mcqAttemp,
    required this.mcqTotalQs,
    required this.mcqReadQs,
    required this.mcqReviseQs,


  }): super(key:key);

  final String mcqAttemp;
  final String mcqTotalQs;
  final String mcqReadQs;
  final String mcqReviseQs;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SimpleCircularProgressBar(
              size: height_150,
              backStrokeWidth: 10,
              progressStrokeWidth: 10,
              backColor: AppColors.greenOpacity,
              progressColors: [
                AppColors.greenColor
              ],
            ),
            SimpleCircularProgressBar(
              size: height_115,
              backStrokeWidth: 10,
              progressStrokeWidth: 10,
              backColor: AppColors.blueOpacity,
              progressColors: [
                AppColors.blueGrade2
              ],
            ),
            SimpleCircularProgressBar(
              size: height_80,
              backStrokeWidth: 10,
              progressStrokeWidth: 10,
              backColor: AppColors.pinkOpacity,
              progressColors: [
                AppColors.pinkGrade2
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customIconText(
                cirBackColor: AppColors.greenOpacity,
                cirColor: AppColors.greenColor,
                ImgAssets: ImgAssets.mcqsIcon,
                atempMcqs: mcqAttemp,
                qsNum: mcqTotalQs,
                qsName: strMcqs,
            ),
            customIconText(
                cirBackColor: AppColors.blueOpacity,
                cirColor: AppColors.blueGrade2,
                ImgAssets: ImgAssets.readIcon,
                atempMcqs: mcqReadQs,
                qsNum: mcqTotalQs,
                qsName: strRead,
            ),
            customIconText(
                cirBackColor: AppColors.pinkOpacity,
                cirColor: AppColors.pinkGrade2,
                ImgAssets: ImgAssets.reviseIcon,
                atempMcqs: mcqReviseQs,
                qsNum: mcqTotalQs,
                qsName: strRevise,
            ),
          ],
        )
      ],
    );
  }
}


Widget customIconText ({required Color cirBackColor,
  required Color cirColor,
  required String ImgAssets,
  required String atempMcqs,
  required String qsNum,
  required String qsName,

}){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SimpleCircularProgressBar(
                  size: height_40,
                  backStrokeWidth: 5,
                  progressStrokeWidth: 5,
                  backColor: cirBackColor,
                  progressColors: [
                    cirColor
                  ],
                ),
                Image(image: AssetImage(ImgAssets)),
              ],
            ),
            CustomDivider(
              width: width_20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(
                        text: atempMcqs,
                        color1: cirColor,
                        fontWeight: fontWeight600,
                        fontSize: font_25),
                    CustomText(
                        text: '/',
                        color1: cirBackColor,
                        fontWeight: fontWeight600,
                        fontSize: font_20),
                    CustomText(
                        text: qsNum,
                        color1: cirBackColor,
                        fontWeight: fontWeight600,
                        fontSize: font_20),
                  ],
                ),
                CustomText(
                    text: qsName,
                    color1: cirColor,
                    fontWeight: fontWeight600,
                    fontSize: font_18),

              ],
            )
          ],
        ),
      )
    ],
  );
}