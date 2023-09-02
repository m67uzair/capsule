import 'package:capsule/src/components/custom_text.dart';
import 'package:flutter/material'
    '.dart';

import '../core/constants/assets.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';

class CustomCountdownContainer extends StatelessWidget {
   CustomCountdownContainer({Key?key,
    required this.text,
    this.height,
    this.width,
    this.font,
       this.subtext,

  }): super(key: key);

  final String text;
  final String? subtext;
  final double? height;
  final double? width;
  final double? font;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?? 80,
      width: width?? 85,
      decoration: BoxDecoration(
          color: AppColors.pinkFillColor,
          borderRadius: BorderRadius.circular(radius_10),
          border: Border.all(color: AppColors.pinkGrade2, width: 1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: text, color1: AppColors.pinkGrade2, fontWeight: fontWeight600, fontSize: font ?? font_22, textAlign: TextAlign.center),
          (subtext != null)? CustomText(text:subtext!, color1: AppColors.pinkGrade2, fontWeight: fontWeight500, fontSize: font_15):Container(),
        ],
      ),
    );
  }
}


Widget socialWidget ({required String text, required String image}){
  return Column(
    children: [
      Container(
        height: 95,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius_15),
          border: Border.all(color: AppColors.greyColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Image(image: AssetImage(image)),
        ),
      ),
      CustomText(text: text, color1: AppColors.black, fontWeight: fontWeight600, fontSize: font_13)
    ],
  );
}