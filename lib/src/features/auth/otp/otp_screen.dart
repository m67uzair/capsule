import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pinput/pinput.dart';

import '../../../components/custom_appbar.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_google.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_text_button.dart';
import '../../../components/custom_textfield.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(elevation: 0),
        title: '',
        onPress: (){},
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            children: [
              CustomDivider(
                height: height_10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Image(image: AssetImage(ImgAssets.createAc), height: height_250,),),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: margin_30),
                child: Column(
                  children: [

                    CustomDivider(
                      height: height_40,
                    ),

                    CustomText(
                      text: strOtpVer,
                      color1: AppColors.pinkGrade2,
                      fontWeight: fontWeight700,
                      fontSize: font_18,
                    ),

                    CustomDivider(
                      height: height_10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: strEnterOtpSentTo,
                          color1: AppColors.pinkGrade2,
                          fontWeight: fontWeight500,
                          fontSize: font_11,
                        ),
                        CustomText(
                          text: ' +91 200 85263464',
                          color1: AppColors.pinkGrade2,
                          fontWeight: fontWeight700,
                          fontSize: font_11,
                        ),
                      ],
                    ),

                    CustomDivider(
                      height: height_20,
                    ),


                    OtpTextField(
                      cursorColor: AppColors.pinkGrade2,
                      borderColor: AppColors.pinkGrade2,
                      focusedBorderColor: AppColors.pinkGrade2,
                      enabledBorderColor: AppColors.pinkGrade2,
                      textStyle: TextStyle(color: AppColors.pinkGrade2, fontSize: font_20, fontFamily: 'OpenSans', fontWeight: fontWeight600),
                    ),

                    CustomDivider(
                      height: height_20,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: strDidntOtp,
                          color1: AppColors.greyColor,
                          fontWeight: fontWeight500,
                          fontSize: font_11,
                        ),
                        CustomTextButton(
                            text: strResendOtp,
                            color: AppColors.pinkGrade2,
                            fontWeight: fontWeight500,
                            font: font_11,
                            onPress: (){}),
                      ],
                    ),
                    CustomDivider(
                      height: height_300,
                    ),

                    CustomButton(
                      text: strGetOtp,
                      color: AppColors.white,
                      fontWeight: fontWeight600,
                      font: font_13,
                      onPress: (){},
                    ),

                    CustomDivider(
                      height: height_30,
                    ),

                  ],
                ),
              )

            ],
          )),
    );
  }
}
