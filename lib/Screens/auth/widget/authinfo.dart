import 'package:flutter/material.dart';

import '../../../Common Components/AppTextStyles.dart';
import '../../../consts/colors.dart';
Widget authInfo(String title,String subtitle)
{
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: AppTextStyles.withColor(AppTextStyles.interSemiBold24, textDark),),
        Text(subtitle,style: AppTextStyles.withColor(AppTextStyles.interRegular14, textGray,)),
      ],
    ),
  );
}