import 'package:capsule/src/components/custom_appbar.dart';
import 'package:capsule/src/components/custom_divider.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class TermScreen extends StatefulWidget {
  const TermScreen({super.key});

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(),
      title: strTermsCondition,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_15),
          children: [
            CustomDivider(
              height: height_20,
            ),
            for(int i=0; i<=20; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: CustomText(text: "1. Chapterwise and Topicwise question bank\n", color1: AppColors.black, fontWeight: fontWeight500, fontSize: font_13),
            ),

            CustomDivider(
              height: height_80,
            ),
          ],
        ),
      ),
    );
  }
}
