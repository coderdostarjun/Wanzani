import 'package:flutter/material.dart';
import '../../../consts/images.dart';
Widget SocialMediaRow()
{
  return  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(googleIcon,),
      SizedBox(width: 10,),
      Image.asset(facebookIcon,),
      SizedBox(width: 10,),
      Image.asset(twitterIcon,),
      SizedBox(width: 10,),
    ],
  );
}