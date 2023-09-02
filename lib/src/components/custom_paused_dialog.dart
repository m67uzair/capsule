import 'package:capsule/src/components/custom_button.dart';
import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';


class RadioTextTwo extends StatefulWidget {
  const RadioTextTwo({super.key});

  @override
  State<RadioTextTwo> createState() => _RadioTextTwoState();
}

class _RadioTextTwoState extends State<RadioTextTwo> {

  int _selectedValue = 0;

  void _handleRadioValueChange( value) {
    setState(() {
      _selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      //height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: AppColors.pinkGrade2.withOpacity(.2),
        borderRadius: BorderRadius.circular(radius_10),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Radio(value: 1, groupValue: _selectedValue, onChanged: _handleRadioValueChange,
                  fillColor: MaterialStatePropertyAll(AppColors.black.withOpacity(.4)),
                  activeColor: AppColors.pinkGrade2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Learn More', color1: AppColors.black.withOpacity(.4), fontWeight: fontWeight700, fontSize: font_14),
                    Container(
                        width: width_180,
                        child: CustomText(text: 'View Answer After each question', color1: AppColors.black.withOpacity(.4), fontWeight: fontWeight500, fontSize: font_12))
                  ],
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: margin_15),
              child: Divider(
                color: AppColors.greyColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Radio(value: 2, groupValue: _selectedValue, onChanged: _handleRadioValueChange,
                  fillColor: MaterialStatePropertyAll(AppColors.black.withOpacity(.4)),
                  activeColor: AppColors.pinkGrade2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Exam Mode', color1: AppColors.black.withOpacity(.4), fontWeight: fontWeight700, fontSize: font_14),
                    Container(
                        width: width_180,
                        child: CustomText(text: 'View Answer After submitting the Test', color1: AppColors.black.withOpacity(.4), fontWeight: fontWeight500, fontSize: font_12))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

