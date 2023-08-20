import 'package:capsule/src/components/custom_color_code_Indicator.dart';
import 'package:capsule/src/components/custom_info_rectangle.dart';
import 'package:capsule/src/components/custom_rounded_icon_button.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ResultAnalysisScreen extends StatelessWidget {
  const ResultAnalysisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GradientText('Result Analysis',
            gradientType: GradientType.linear,
            gradientDirection: GradientDirection.ttb,
            colors: const [
              AppColors.pinkGrade1,
              AppColors.pinkGrade2,
            ],
            style: TextStyle(
              fontSize: font_18,
              fontFamily: 'OpenSans',
              fontWeight: fontWeight700,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_15),
        children: [
          SizedBox(
            height: height_20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: height_140,
                  width: width_140,
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          width: width_140,
                          height: height_140,
                          child: const CircularProgressIndicator(
                            color: AppColors.pinkGrade3,
                            strokeWidth: 20.0,
                            value: 1,
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: '6',
                              color1: AppColors.pinkGrade3,
                              fontWeight: fontWeight600,
                              fontSize: font_30,
                            ),
                            const SizedBox(
                              width: 40,
                              child: Divider(
                                color: AppColors.pinkGrade3,
                                thickness: 5.0,
                              ),
                            ),
                            CustomText(
                              text: '25',
                              color1: AppColors.pinkGrade3,
                              fontWeight: fontWeight600,
                              fontSize: font_30,
                            ),
                            CustomText(
                              text: '5.00%',
                              color1: AppColors.pinkGrade3,
                              fontWeight: fontWeight600,
                              fontSize: font_17,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: height_35,
                          width: height_35,
                          child: Stack(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: width_35,
                                  height: height_35,
                                  child: const CircularProgressIndicator(
                                    color: AppColors.lightGreen,
                                    backgroundColor: AppColors.greyColor,
                                    strokeWidth: 5.0,
                                    value: 0.34,
                                  ),
                                ),
                              ),
                              Center(
                                child: CustomText(
                                  text: '3',
                                  color1: AppColors.lightGreen,
                                  fontWeight: fontWeight600,
                                  fontSize: font_17,
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        width: width_15,
                      ),
                      CustomText(
                        text: 'Correct',
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_17,
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 120,
                      child: Divider(
                        thickness: 2,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: height_35,
                          width: height_35,
                          child: Stack(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: width_35,
                                  height: height_35,
                                  child: const CircularProgressIndicator(
                                    color: AppColors.lightGreen,
                                    backgroundColor: AppColors.greyColor,
                                    strokeWidth: 5.0,
                                    value: 0.34,
                                  ),
                                ),
                              ),
                              Center(
                                child: CustomText(
                                  text: '3',
                                  color1: AppColors.lightGreen,
                                  fontWeight: fontWeight600,
                                  fontSize: font_17,
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        width: width_15,
                      ),
                      CustomText(
                        text: 'Incorrect',
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_17,
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 120,
                      child: Divider(
                        thickness: 2,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: height_35,
                          width: height_35,
                          child: Stack(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: width_35,
                                  height: height_35,
                                  child: const CircularProgressIndicator(
                                    color: AppColors.deepPink,
                                    backgroundColor: AppColors.greyColor,
                                    strokeWidth: 5.0,
                                    value: 0.34,
                                  ),
                                ),
                              ),
                              Center(
                                child: CustomText(
                                  text: '21',
                                  color1: AppColors.graphPink,
                                  fontWeight: fontWeight600,
                                  fontSize: font_17,
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        width: width_15,
                      ),
                      CustomText(
                        text: 'Skipped',
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_17,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: height_20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomInfoRectangle(
                iconPath: ImgAssets.timeTaken,
                title: 'Time Taken',
                subTitle: '03:53:26',
              ),
              SizedBox(
                width: width_15,
              ),
              const CustomInfoRectangle(
                iconPath: ImgAssets.accuracy,
                title: 'Accuracy',
                subTitle: '33.33%',
              ),
            ],
          ),
          SizedBox(height: height_15),
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    text: 'Question Analysis',
                    color1: AppColors.pinkGrade2,
                    fontWeight: fontWeight600,
                    fontSize: font_18,
                  ),
                  SizedBox(
                    height: height_15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CustomColorCodeIndicator(color: AppColors.lightGreen, title: 'Correct'),
                      CustomColorCodeIndicator(color: AppColors.redColor, title: 'Incorrect'),
                      const CustomColorCodeIndicator(color: AppColors.graphPink, title: 'Skipped'),
                    ],
                  ),
                  SizedBox(
                    height: height_15,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 10,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: 30,
                    itemBuilder: (context, index) => Container(
                      height: height_65,
                      width: width_65,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(radius_5), color: AppColors.lightGreen),
                      child: Center(
                        child: CustomText(
                          text: index.toString(),
                          color1: AppColors.black,
                          fontWeight: fontWeight600,
                          fontSize: font_17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height_15),
          CustomText(
            text: 'Wrongly answered topics',
            color1: AppColors.pinkGrade2,
            fontWeight: fontWeight600,
            fontSize: font_18,
          ),
          SizedBox(height: height_5),
          Row(
            children: [
              SizedBox(
                width: width_10,
              ),
              const CustomColorCodeIndicator(title: '2.2 Significant Figures', color: AppColors.graphPink),
            ],
          ),
          SizedBox(height: height_45),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomRoundedIconButton(
                title: 'Review Answer',
                onPressed: () {},
                iconImagePath: ImgAssets.review,
              ),
              CustomRoundedIconButton(
                title: 'Share',
                onPressed: () {},
                iconImagePath: ImgAssets.share,
              ),
              CustomRoundedIconButton(
                title: 'Retake Exam',
                onPressed: () {},
                iconImagePath: ImgAssets.retake,
              ),
            ],
          ),
          SizedBox(height: height_15),
        ],
      ),
    );
  }
}
