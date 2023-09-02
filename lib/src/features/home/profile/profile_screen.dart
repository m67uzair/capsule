import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_profile_list.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:custom_alert_dialog_box/custom_alert_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key?key}): super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(),
      title: strMyAc,
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            children: [
              CircularPercentIndicator(
                radius: 60,
                percent: .8,
                animation: true,
                reverse: true,
                startAngle: 80,
                backgroundColor: AppColors.transparent,
                progressColor: AppColors.pinkGrade2,
                circularStrokeCap: CircularStrokeCap.round,
                center: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(ImgAssets.logInArt),
                ),
              ),
              CustomDivider(
                height: height_30,
              ),
              Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(radius_15),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor.withOpacity(.4),
                      spreadRadius: 5,
                      blurRadius: 15
                    )
                  ]
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: margin_15),
                  child: Column(
                    children: [
                      CustomProfDetails(
                        title: strMyAc,
                        subtitle: 'Make changes to your account',
                        icon: Icons.arrow_forward_ios_outlined,
                        leading: ImgAssets.userP,
                        onTap: (){},
                      ),
                      CustomProfDetails(
                        title: strMcqHistory,
                        subtitle: strViewMcqHistory,
                        icon: Icons.arrow_forward_ios_outlined,
                        leading: ImgAssets.userP,
                        onTap: (){},
                      ),
                      CustomProfDetails(
                        title: strLibrary,
                        subtitle: strViewLibrary,
                        icon: Icons.arrow_forward_ios_outlined,
                        leading: ImgAssets.userP,
                        onTap: (){},
                      ),
                      CustomProfDetails(
                        title: strContact,
                        subtitle: strChangeContact,
                        icon: Icons.arrow_forward_ios_outlined,
                        leading: ImgAssets.userP,
                        onTap: (){},
                      ),
                      CustomProfDetails(
                        title: strTermsCondition,
                        subtitle: strCheckTermsCondition,
                        leading: ImgAssets.userP,
                        onTap: (){},
                      ),
                      CustomProfDetails(
                        title: strRateUs,
                        subtitle: strRateOnPS,
                        leading: ImgAssets.userP,
                        onTap: (){},
                      ),
                      CustomProfDetails(
                        title: strLogout,
                        subtitle: strSecureLogout,
                        icon: Icons.arrow_forward_ios_outlined,
                        leading: ImgAssets.userP,
                        onTap: (){
                          print('success');
                          CustomAlertDialogBox.showCustomAlertBox(
                            context: context,
                            willDisplayWidget: Container(
                              //height: height_400,
                              width: width_450,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                      onTap: (){
                                        Get.back();
                                      },
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        height: 60,
                                        width: 60,
                                        child: Image.asset(ImgAssets.close),
                                      ),
                                    ),
                                  ),
                                  Image.asset(ImgAssets.logoutText, height: 20,),
                                  CustomText(
                                      text: 'Are you sure want to log out?',
                                      color1: AppColors.greyColor,
                                      fontWeight: fontWeight500,
                                      fontSize: font_15),
                                  Row(
                                    children: [
                                      CustomButton(
                                          bgcolor: AppColors.blueGrade2,
                                          text: 'Cancel', color: AppColors.white, fontWeight: fontWeight600,
                                          font: font_14, onPress: (){}),
                                      CustomButton(
                                          text: strLogout, color: AppColors.white, fontWeight: fontWeight600,
                                          font: font_14, onPress: (){}),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(value: isChecked, onChanged: (bool? val){
                                        setState(() {
                                          isChecked = val!;
                                        });
                                      }),

                                      CustomText(text: 'Delete account permanent', color1: AppColors.black, fontWeight: fontWeight500, fontSize: font_14)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
