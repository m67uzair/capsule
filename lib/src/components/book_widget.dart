import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_weight.dart';

class CustomBook extends StatelessWidget {
  const CustomBook({Key?key,
    required this.text, required this.image,

  }): super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(radius_15),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(.08),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(-2, 2)
                    )
                  ]
                ),
                child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(image, fit: BoxFit.fitHeight,),
                    )),
              ),
              SizedBox(
                width: 90,
                child: CustomText(
                    text: text,
                    color1: AppColors.black,
                    fontWeight: fontWeight600,
                    fontSize: font_12, textAlign: TextAlign.center),
              )
            ],
          ),
        ),
      ],
    );
  }
}
