import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:capsule/src/core/constants/font_weight.dart';
import 'package:capsule/src/core/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget  {
   const CustomAppBar({
     Key?key,
     required this.appBar,
     this.title,
     this.onPress,

   }): super(key:key);

   final AppBar appBar;
   final String? title;
   final Function()? onPress;


   @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shadowColor: AppColors.pinkGrade2,
      leading: IconButton(
        onPressed: onPress,
         icon: Icon(Icons.arrow_back, color: AppColors.pinkGrade2,),),
      title: GradientText(
        title!,
          gradientType: GradientType.linear,
          gradientDirection: GradientDirection.ttb,
          colors: [
          AppColors.pinkGrade1,
        AppColors.pinkGrade2,],
        style:TextStyle(fontSize: font_18, fontFamily: 'OpenSans', fontWeight: fontWeight600,
     )
      )
      );
  }


   @override
   Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

}
