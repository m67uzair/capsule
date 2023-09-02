import 'package:capsule/src/features/auth/login/login_screen.dart';
import 'package:capsule/src/features/auth/otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});

   final TextEditingController mobileNo = TextEditingController();

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
                  child: Image(image:  AssetImage(ImgAssets.createAc), height: height_250,)),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: margin_30),
                child: Column(
                  children: [
                    CustomDivider(
                      height: height_60,
                    ),

                    CustomTextField(
                      controller: mobileNo,
                        labelText: strMobileNo,
                        prefixIcon: const Image(image: AssetImage(ImgAssets.fonIcon)),
                        obscure: false,
                        height: height_10),

                    CustomDivider(
                      height: height_20,
                    ),

                    CustomButton(
                        text: strGetOtp,
                        color: AppColors.white,
                        fontWeight: fontWeight600,
                        font: font_13,
                        onPress: (){
                          Get.put(OtpScreen());
                        },
                    ),
                    CustomDivider(
                      height: height_30,
                    ),
                    const CustomDivider(
                      isDivider: true,
                      color: AppColors.greyColor,
                      height: 10,
                      text: strContinue,
                    ),
                    CustomDivider(
                      height: height_30,
                    ),
                    CustomGoogle(
                      onTap: (){},
                    ),
                    CustomDivider(
                      height: height_10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: strAlreadyAc,
                          color1: AppColors.black,
                          fontWeight: fontWeight600,
                          fontSize: font_12,
                        ),
                        CustomTextButton(
                            text: strLogin,
                            color: AppColors.pinkGrade2,
                            fontWeight: fontWeight600,
                            font: font_12,
                            onPress: ()
                            {
                              Get.put(LoginScreen());
                            }),
                      ],
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
