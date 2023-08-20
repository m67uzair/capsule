import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:capsule/src/components/banner_chip.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_20,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(ImgAssets.personIllus),
                ),
                CustomDivider(
                  width: width_10,
                ),
                GradientText(
                    'Hey, Mizan',
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.ttb,
                    colors: [
                      AppColors.pinkGrade1,
                      AppColors.pinkGrade2,],
                    style:TextStyle(fontSize: font_18, fontFamily: 'OpenSans', fontWeight: fontWeight600,
                    )
                )
              ],
            ),
            CustomDivider(
              height: height_30,
            ),
            BannerChip(
              onPress: (){
                print('Success');
              },
            ),
            CustomDivider(
              height: height_50,
            ),
            CustomText(
                text: strSubjects,
                color1: AppColors.black,
                fontWeight: fontWeight700,
                fontSize: font_15),
            DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  ButtonsTabBar(
                    radius: 25,
                    height: 40,
                    contentPadding: EdgeInsets.symmetric(horizontal: 40),
                    buttonMargin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: AppColors.pinkGrade2,
                    ),
                      unselectedLabelStyle: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'OpenSans',
                        fontSize: font_14,
                        fontWeight: fontWeight600
                      ),
                      unselectedDecoration: BoxDecoration(
                        color: AppColors.blueGrade2
                      ),
                      tabs: [
                        Tab(
                          text: str11,
                        ),
                        Tab(
                          text: str12,
                        ),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
