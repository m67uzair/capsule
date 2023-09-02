import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_google.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/components/custom_text_button.dart';
import 'package:capsule/src/components/custom_textfield.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:capsule/src/features/auth/signup/signup_screen.dart';
import 'package:capsule/src/features/test/test_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/font_weight.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
   LoginScreen({super.key});

  TextEditingController mobileNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(),
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
              child: Image(image: const AssetImage(ImgAssets.logInAc), height: height_60,)),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: margin_30),
            child: Column(
              children: [
                CustomDivider(
                  height: height_40,
                ),
                Image(image: const AssetImage(ImgAssets.logInArt), height: height_180,),

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
                    onPress: (){}),
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
                        text: strDontAc,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_12,
                    ),
                    CustomTextButton(
                        text: strSignup,
                        color: AppColors.pinkGrade2,
                        fontWeight: fontWeight600,
                        font: font_12,
                        onPress: (){
                          Get.put(TestCategoryScreen());
                        })
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
