import 'package:capsule/src/components/countdown_widget.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_textTwo.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class CountdownScreen extends StatefulWidget {
  const CountdownScreen({super.key});

  @override
  State<CountdownScreen> createState() => _CountdownScreenState();
}

class _CountdownScreenState extends State<CountdownScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_40,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.pinkFillColor,
                borderRadius: BorderRadius.circular(radius_15),
                border: Border.all(color: AppColors.pinkGrade2, width: 1)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCountdownContainer(
                        text: '265',
                        subtext: strDays,
                      ),
                      CustomCountdownContainer(
                        text: '05',
                        subtext: strHours,
                      ),
                      CustomCountdownContainer(
                        text: '55',
                        subtext: strMins,
                      ),
                      CustomCountdownContainer(
                        text: '12',
                        subtext: strSec,
                      ),
                    ],
                  ),
                  CustomDivider(
                    height: height_25,
                  ),
                  CustomCountdownContainer(
                    height: height_40,
                    width: width_250,
                    text: 'NEET 2024 Countdown',
                    font: font_10,
                  ),
                ],
              ),
            ),
            CustomDivider(
              height: height_25,
            ),
            Image(image: AssetImage(ImgAssets.bannerTwo)),
            CustomDivider(
              height: height_25,
            ),
            CustomText(
                text: strWeR,
                fontWeight: fontWeight700,
                fontSize: font_16,
                textColor: AppColors.pinkGrade2),
            CustomDivider(
              height: height_10,
            ),
            CustomText(
                text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                fontWeight: fontWeight400,
                fontSize: font_13,
                textColor: AppColors.black),
            CustomDivider(
              height: height_25,
            ),
            Wrap(
              spacing: width_30,
              runSpacing: height_20,
              children: [
                socialWidget(
                    image: ImgAssets.youtube,
                    text: strYoutube
                ),
                socialWidget(
                    image: ImgAssets.instagram,
                    text: strInstagram
                ),
                socialWidget(
                    image: ImgAssets.telegram,
                    text: strTelegram
                ),
                socialWidget(
                    image: ImgAssets.twitter,
                    text: strTwitter
                ),
              ],
            ),
            CustomDivider(
              height: height_45,
            ),
          ],
        ),
      ),
    );
  }
}
