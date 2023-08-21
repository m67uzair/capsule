import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

import '../core/constants/dimensions.dart';

class CustomMCQOptions extends StatelessWidget {
  const CustomMCQOptions({
    super.key,
    required this.optionA,
    required this.optionB,
    required this.optionC,
    required this.optionD,
    this.optionAImage,
    this.optionBImage,
    this.optionCImage,
    this.optionDImage,
  });

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '(a)',
                      textColor: AppColors.black,
                      fontSize: font_16,
                      fontWeight: fontWeight600,
                    ),
                    SizedBox(
                      width: width_2,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomText(
                            text: optionA,
                            textColor: AppColors.black,
                            fontSize: font_15,
                            fontWeight: fontWeight600,
                            maxLines: 3,
                            softwrap: true,
                          ),
                          SizedBox(
                            height: height_15,
                          ),
                          if (optionAImage != null)
                            Image.asset(
                              optionAImage.toString(),
                              width: width_125,
                              height: width_125,
                              fit: BoxFit.cover,
                            )
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: width_5),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '(b)',
                      textColor: AppColors.black,
                      fontSize: font_15,
                      fontWeight: fontWeight600,
                    ),
                    SizedBox(
                      width: width_2,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomText(
                            text: optionB,
                            textColor: AppColors.black,
                            fontSize: font_15,
                            fontWeight: fontWeight600,
                            maxLines: 3,
                            softwrap: true,
                          ),
                          SizedBox(
                            height: height_15,
                          ),
                          if (optionBImage != null)
                            Image.asset(
                              optionBImage.toString(),
                              width: width_125,
                              height: width_125,
                              fit: BoxFit.cover,
                            )
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height_25,
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '(c)',
                      textColor: AppColors.black,
                      fontSize: font_15,
                      fontWeight: fontWeight600,
                    ),
                    SizedBox(
                      width: width_2,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomText(
                            text: optionC,
                            textColor: AppColors.black,
                            fontSize: font_15,
                            fontWeight: fontWeight600,
                            maxLines: 2,
                            softwrap: true,
                          ),
                          SizedBox(
                            height: height_15,
                          ),
                          if (optionCImage != null)
                            Image.asset(
                              optionCImage.toString(),
                              width: width_125,
                              height: width_125,
                              fit: BoxFit.cover,
                            )
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: width_5),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '(d)',
                      textColor: AppColors.black,
                      fontSize: font_15,
                      fontWeight: fontWeight600,
                    ),
                    SizedBox(
                      width: width_2,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomText(
                            text: optionD,
                            textColor: AppColors.black,
                            fontSize: font_15,
                            fontWeight: fontWeight600,
                            maxLines: 2,
                            softwrap: true,
                          ),
                          SizedBox(
                            height: height_15,
                          ),
                          if (optionDImage != null)
                            Image.asset(
                              optionDImage.toString(),
                              width: width_125,
                              height: width_125,
                              fit: BoxFit.cover,
                            )
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
