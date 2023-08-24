import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/components/custom_text_button_2.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/features/test/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MockTestSelectionScreen extends GetView<TestController> {
  const MockTestSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height_15),
          Image.asset(
            ImgAssets.mockTestBig,
            height: height_150,
            color: AppColors.pinkGrade2,
            fit: BoxFit.cover,
          ),
          SizedBox(height: height_25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: "Mock Tests",
                fontWeight: fontWeight600,
                fontSize: font_17,
                textColor: AppColors.pinkGrade2,
              ),
            ),
          ),
          SizedBox(height: height_25),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: margin_10),
              child: ListView(
                children: [
                  for (int i = 0; i < 4; i++)
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          // barrierDismissible: false,
                          builder: (context) {
                            return Container(
                              decoration:
                                  BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(radius_10)),
                              margin: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_25),
                              padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_2),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColors.pinkGrade2,
                                            padding: EdgeInsets.symmetric(horizontal: margin_10, vertical: margin_5),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(radius_25)))),
                                        child: CustomText(
                                          text: 'New Pattern',
                                          fontWeight: fontWeight600,
                                          fontSize: font_14,
                                          textColor: AppColors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Image.asset(ImgAssets.closCircle)),
                                    ],
                                  ),
                                  SizedBox(height: height_15),
                                  DefaultTextStyle(
                                    style: TextStyle(),
                                    child: CustomText(
                                      text: 'NEET 23 Exclusives: Class 11 Mock Test - 1',
                                      fontSize: font_17,
                                      fontWeight: fontWeight600,
                                      textColor: AppColors.black,
                                      maxLines: 2,
                                      softwrap: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height_25,
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: CustomSummaryInfoContainer(
                                          title: '22',
                                          subtitle: 'MCQs',
                                        ),
                                      ),
                                      SizedBox(
                                        width: width_5,
                                      ),
                                      const Expanded(
                                        child: CustomSummaryInfoContainer(
                                          title: '22',
                                          subtitle: 'Mins',
                                        ),
                                      ),
                                      SizedBox(
                                        width: width_5,
                                      ),
                                      const Expanded(
                                        child: CustomSummaryInfoContainer(
                                          title: '22',
                                          subtitle: 'Marks',
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: height_25,
                                  ),
                                  const Expanded(child: CustomSummaryContainer()),
                                  SizedBox(
                                    height: height_25,
                                  ),
                                  CustomTextButton2(title: 'Start', onPressed: () {}),
                                  SizedBox(
                                    height: height_15,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(margin_10),
                        margin: EdgeInsets.symmetric(vertical: margin_10), // comment
                        decoration: BoxDecoration(
                            color: i % 2 == 0 ? AppColors.pinkGrade2 : AppColors.blueGrade2,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(radius_10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: '3.2 Position, path length and displacement',
                              fontWeight: fontWeight600,
                              fontSize: font_15,
                              textColor: AppColors.white,
                              maxLines: 2,
                              softwrap: true,
                            ),
                            SizedBox(
                              height: height_8,
                            ),
                            CustomText(
                              text: '21 MCQs',
                              fontWeight: fontWeight600,
                              fontSize: font_15,
                              textColor: AppColors.white.withOpacity(0.7),
                            ),
                            SizedBox(
                              height: height_15,
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomSummaryContainer extends StatelessWidget {
  const CustomSummaryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.pinkGrade2.withOpacity(0.10), borderRadius: BorderRadius.all(Radius.circular(radius_10))),
      padding: EdgeInsets.all(margin_15),
      child: ListView(
        children: [
          DefaultTextStyle(
            style: TextStyle(),
            child: CustomText(
                text: 'MARKS DISTRIBUTION',
                fontWeight: fontWeight600,
                fontSize: font_17,
                textColor: AppColors.black.withOpacity(0.60)),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: '1. Physics ',
            isRichText: true,
            textColor: AppColors.black,
            fontSize: font_17,
            fontWeight: fontWeight600,
            childText: '(35+15)',
            childTextColor: AppColors.black.withOpacity(0.60),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: '2. Botany ',
            isRichText: true,
            textColor: AppColors.black,
            fontSize: font_17,
            fontWeight: fontWeight600,
            childText: '(35+15)',
            childTextColor: AppColors.black.withOpacity(0.60),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: '3. Chemistry ',
            isRichText: true,
            textColor: AppColors.black,
            fontSize: font_17,
            fontWeight: fontWeight600,
            childText: '(35+15)',
            childTextColor: AppColors.black.withOpacity(0.60),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: '4. Zoology ',
            isRichText: true,
            textColor: AppColors.black,
            fontSize: font_17,
            fontWeight: fontWeight600,
            childText: '(35+15)',
            childTextColor: AppColors.black.withOpacity(0.60),
          ),
          SizedBox(
            height: height_15,
          ),
          DefaultTextStyle(
            style: TextStyle(),
            child: CustomText(
                text: 'EXAM PATTERN',
                fontWeight: fontWeight600,
                fontSize: font_17,
                textColor: AppColors.black.withOpacity(0.60)),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: 'Section A ',
            isRichText: true,
            textColor: AppColors.black,
            fontSize: font_17,
            fontWeight: fontWeight600,
            childText: '35 MCQs',
            childTextColor: AppColors.black.withOpacity(0.60),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: 'Section B ',
            isRichText: true,
            textColor: AppColors.black,
            fontSize: font_17,
            fontWeight: fontWeight600,
            childText: '35 MCQs',
            childTextColor: AppColors.black.withOpacity(0.60),
          ),
          SizedBox(
            height: height_15,
          ),
          CustomText(
            text: 'You Can Attempt Only Maximum Of 10 MCQs In Section B ',
            isRichText: true,
            textColor: AppColors.black,
            fontSize: font_16,
            fontWeight: fontWeight600,
            childText: '35 MCQs',
            childTextColor: AppColors.black.withOpacity(0.60),
          ),
        ],
      ),
    );
  }
}

class CustomSummaryInfoContainer extends StatelessWidget {
  const CustomSummaryInfoContainer({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height_100,
      width: width_110,
      decoration: BoxDecoration(
          color: AppColors.pinkGrade2.withOpacity(0.10), borderRadius: BorderRadius.all(Radius.circular(radius_10))),
      padding: EdgeInsets.all(margin_20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: TextStyle(),
            child: CustomText(
              text: title,
              fontSize: font_25,
              fontWeight: fontWeight800,
              textColor: AppColors.black,
            ),
          ),
          SizedBox(
            height: height_5,
          ),
          DefaultTextStyle(
            style: TextStyle(),
            child: CustomText(
              text: subtitle,
              fontSize: font_20,
              fontWeight: fontWeight600,
              textColor: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
