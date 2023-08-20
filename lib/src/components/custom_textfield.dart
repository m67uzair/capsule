import 'package:capsule/src/core/constants/assets.dart';
import 'package:flutter/material.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_divider.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({Key?key,
     required this.labelText,
     required this.prefixIcon,
     this.suffixIcon,
     required this.obscure,
     required this.height,
     this.controller,
     this.onTap,
     this.readOnly,
  }): super(key:key);

   final String labelText;
   final Image? prefixIcon;
   final dynamic suffixIcon;
   final bool obscure;
   final bool? readOnly;
   final double height;
   final TextEditingController? controller;
   final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 85,
          child: TextFormField(
            onTap: onTap,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: AppColors.pinkGrade2,
            controller: controller,
            obscureText: obscure,
            style: TextStyle(color: AppColors.pinkGrade2, fontSize: font_12, fontWeight: fontWeight400, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              fillColor: AppColors.pinkFillColor,
              filled: true,
              labelText: labelText,
              labelStyle: TextStyle(color: AppColors.pinkGrade2, fontSize: font_12, fontWeight: fontWeight400, fontFamily: 'OpenSans'),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius_10),
                borderSide: BorderSide(color: AppColors.pinkGrade2)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius_10),
                  borderSide: BorderSide(color: AppColors.pinkGrade2)
              ),
            ),
          ),
        ),
        CustomDivider(
          height: height,
          isDivider: false,
        ),
      ],
    );
  }
}




class CustomTypeListField extends StatelessWidget {
  CustomTypeListField({Key?key,
    required this.labelText,
    required this.height,
    this.controller,
    this.onTap,
    this.prefixIcon,
  }): super(key:key);

  final String labelText;
  final Image? prefixIcon;
  final double height;
  final TextEditingController? controller;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            alignment: Alignment.centerLeft,
            height: 65,
            width: width_340,
            decoration: BoxDecoration(
              color: AppColors.pinkFillColor,
                borderRadius: BorderRadius.circular(radius_10),
                border: Border.all(color: AppColors.pinkGrade2),
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    labelText,
                    style: TextStyle(color: AppColors.pinkGrade2, fontSize: font_12, fontWeight: fontWeight400, fontFamily: 'OpenSans'),
                    textAlign: TextAlign.left,
                  ),
                  Image(image: AssetImage(ImgAssets.calendarIcon))
                ],
              ),
            ),
          ),
        ),
        CustomDivider(
          height: height,
          isDivider: false,
        ),
      ],
    );
  }
}