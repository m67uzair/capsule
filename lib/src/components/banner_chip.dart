import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_weight.dart';

class BannerChip extends StatelessWidget {
  const BannerChip({Key?key,
    this.onPress,

  }):super(key:key);

  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.pinkGrade2,
        borderRadius: BorderRadius.circular(radius_15),
        boxShadow: [BoxShadow(
          color: AppColors.pinkGrade2.withOpacity(.5),
          blurRadius: 10,
          offset: Offset(0, 5),
          spreadRadius: 4
        )]
      ),
      child: Row(
        children: [
          CustomDivider(
            width: width_10,
          ),
          Image(image: AssetImage(ImgAssets.banner), height: 150,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                textAlign: TextAlign.center,
                  text: strBannerText,
                  color1: AppColors.white,
                  fontWeight: fontWeight700,
                  fontSize: font_18),
              CustomDivider(
                height: height_15,
              ),
              CustomButton(
                  text: strTryIt,
                  bgcolor: AppColors.blueGrade2,
                  color: AppColors.white,
                  fontWeight: fontWeight800,
                  font: font_14,
                  onPress: onPress!)
            ],
          )
        ],
      ),
    );
  }
}
