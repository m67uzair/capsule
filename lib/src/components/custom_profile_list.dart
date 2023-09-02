import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/assets.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:flutter/material.dart';

import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';

class CustomProfDetails extends StatelessWidget {
   CustomProfDetails({Key?key,
     required this.title,
     required this.subtitle,
     this.icon,
     required this.leading,
     this.onTap,

  }): super(key:key);

  final String title;
  final String subtitle;
  final String leading;
  final IconData? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: AppColors.pinkFillColor,
        child: Image(image: AssetImage(leading)),
      ),
      title: Text(title),
      titleTextStyle: TextStyle(color: AppColors.black, fontFamily: 'OpenSans', fontWeight: fontWeight600, fontSize: font_12, height: -.8),
      titleAlignment: ListTileTitleAlignment.center,
      subtitle: Text(subtitle, style: TextStyle(color: AppColors.greyColor, fontFamily: 'OpenSans', fontWeight: fontWeight600, fontSize: font_10,),),
      trailing: (icon != null)? Icon( icon, color: AppColors.pinkGrade2, size: 16,):Icon(null),
    );
  }
}


// Row(
// children: [
// CircleAvatar(
// radius: 20,
// backgroundColor: AppColors.pinkFillColor,
// child: Image(image: AssetImage(ImgAssets.userP)),
// ),
//
// ],
// );