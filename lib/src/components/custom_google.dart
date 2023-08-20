import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_weight.dart';

class CustomGoogle extends StatelessWidget {
  const CustomGoogle({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(
              color: AppColors.greyColor,
          ),
          borderRadius: BorderRadius.circular(radius_10)
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: margin_50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(ImgAssets.google)),
              CustomText(
                  text: strContGoogle,
                  color1: AppColors.black,
                  fontWeight: fontWeight600,
                  fontSize: font_14)
            ],
          ),
        ),
      ),
    );
  }
}
