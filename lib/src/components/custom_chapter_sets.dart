import 'package:capsule/src/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_divider.dart';
import 'custom_text.dart';

class CustomChaptersSets extends StatelessWidget {
  const CustomChaptersSets({Key?key,
    required this.containerColor,
    required this.containerShadowColor,
    required this.topicName,
    required this.subTopicName,
    this.expand,
    required this.image,
    this.onTap,

  }):super(key:key);

  final Color containerColor;
  final Color containerShadowColor;
  final String topicName;
  final String subTopicName;
  final bool? expand;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
          padding:  EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                alignment: Alignment.topLeft,
                width: width_200,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: topicName, color1: AppColors.white, fontWeight: fontWeight600, fontSize: font_12,),
                    CustomText(
                        text: subTopicName, color1: AppColors.white.withOpacity(.7), fontWeight: fontWeight600, fontSize: font_10),
                  ],
                ),
              ),
              Image(image: AssetImage(image), alignment: Alignment.topRight,)
            ],
          ),
        ),
      ),
    );
  }
}
