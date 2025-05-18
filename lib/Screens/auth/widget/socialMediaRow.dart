import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../consts/images.dart';
Widget SocialMediaRow()
{
  return  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(googleIcon,),
        SizedBox(width: 10.w,),
        Image.asset(facebookIcon,),
        SizedBox(width: 10.w,),
        Image.asset(twitterIcon,),
        SizedBox(width: 10.w,),
      ],
    ),
  );
}