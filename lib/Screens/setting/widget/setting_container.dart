import 'package:flutter/material.dart';

import '../../../Common Components/AppTextStyles.dart';
Widget settingContainer(imageLink,text)
{
  return Row(
    children: [
      Image.asset(imageLink),
      Text(text,style: AppTextStyles.withColor(AppTextStyles.robotoRegular14, Color(0xff1F2937)),),
      Spacer(),
      Icon(Icons.keyboard_arrow_right,color:Color(0xff9CA3AF),),
    ],
  );
}