
import 'package:flutter/material.dart';

import '../core/constants/dimensions.dart';
import '../core/constants/palette.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key?key,
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.font,
    required this.onPress,
    this.bgcolor,
  }):super(key:key);


  final String text;
  final Color color;
  final Color? bgcolor;
  final FontWeight fontWeight;
  final double font;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
          bgcolor ??  AppColors.pinkGrade2
          ),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius_60)
          ),),
          elevation: MaterialStatePropertyAll(0),

        ),
          child: CustomText(
            text: text,
            color1: color,
            fontWeight: fontWeight,
            fontSize: font,

          ),),
    );
  }
}
