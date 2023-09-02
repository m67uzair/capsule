import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      alignment: Alignment.center,
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius_4),
        border: Border.all(color: AppColors.pinkGrade2)
      ),
      child: IconButton(onPressed: (){}, icon: Icon(Icons.check, size: 12,)),
    );
  }
}
