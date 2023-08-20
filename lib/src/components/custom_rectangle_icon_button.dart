
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class RectangleIconButton extends StatelessWidget {
  const RectangleIconButton({
    super.key,
    required this.iconImagePath,
    required this.onPressed,
  });

  final String iconImagePath;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(margin_10),
        decoration: const BoxDecoration(color: AppColors.pinkGrade2, shape: BoxShape.circle),
        child: Image.asset(
          iconImagePath,
          color: Colors.white,
          width: width_25,
          height: height_25,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
