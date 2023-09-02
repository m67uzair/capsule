import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_textField_ep.dart';
import '../../../core/constants/font_weight.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(),
      title: '${strContact} Us',
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_30,
            ),
            CustomText(
                text: 'Fill out the form to get help with your\nquote.',
                color1: AppColors.pinkGrade2,
                fontWeight: fontWeight600,
                fontSize: font_13,
              textAlign: TextAlign.center,
            ),

            CustomDivider(
              height: height_30,
            ),

            CustomTextFieldEP(
                labelText: 'What’s your first name ?',
                color: AppColors.black,
                fillColor: AppColors.black.withOpacity(.1),
                obscure: false,
                height: height_20),
            CustomTextFieldEP(
                labelText: strMobileNo,
                color: AppColors.black,
                fillColor: AppColors.black.withOpacity(.1),
                obscure: false,
                height: height_20),
            CustomTextFieldEP(
                labelText: strEnterEmail,
                color: AppColors.black,
                fillColor: AppColors.black.withOpacity(.1),
                obscure: false,
                height: height_20),
            CustomTextFieldEP(
                labelText: 'Write Message here',
                color: AppColors.black,
                fillColor: AppColors.black.withOpacity(.1),
                obscure: false,
                height: height_20,
            lines: 5,
            ),
            CustomDivider(
              height: height_30,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: margin_90),
              child: CustomButton(text: 'Get Help Now!', color: AppColors.white, fontWeight: fontWeight600, font: font_14, onPress: (){}),
            ),
            CustomDivider(
              height: height_100,
            ),
          ],
        ),
      ),
    );
  }
}
