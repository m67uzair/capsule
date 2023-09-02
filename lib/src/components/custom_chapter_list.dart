import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../core/constants/palette.dart';

class CustomChapterList extends StatelessWidget {
  const CustomChapterList({Key?key,
    required this.containerColor,
    required this.containerShadowColor,
    required this.circularBackColor,
    required this.circularColor,
    required this.chapterName,

  }): super(key:key);

  final Color containerColor;
  final Color containerShadowColor;
  final Color circularBackColor;
  final Color circularColor;
  final String chapterName;

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: height_60,
      width: width_250,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(radius_15),
        boxShadow: [
          BoxShadow(
            color: containerShadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_10),
        child: Row(
          children: [
            Stack(
              children: [
                SimpleCircularProgressBar(
                  size: 51,
                  backStrokeWidth: 3,
                  progressStrokeWidth: 3,
                  backColor: circularBackColor,
                  progressColors: [
                    circularColor
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: width_2, top: height_2),
                  child: CircleAvatar(
                    radius: radius_20,
                    backgroundColor: AppColors.white,
                  ),
                ),
              ],
            ),
            CustomDivider(
              width: width_8,
            ),
            SizedBox(
              width: width_170,
              child: CustomText(
                  text: chapterName, color1: AppColors.white, fontWeight: fontWeight600, fontSize: font_15),
            ),
          ],
        ),
      ),
    );
  }
}
