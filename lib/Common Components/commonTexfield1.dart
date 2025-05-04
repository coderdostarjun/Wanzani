import 'package:flutter/material.dart';

import '../../../Common Components/AppTextStyles.dart';
import '../../../consts/colors.dart';
Widget commonTextField1(controllerName,hintText,{double? size, TextInputType? textInputype})
{
  return   SizedBox(
    width:size??400,
    child: TextField(
      controller: controllerName,
      decoration: InputDecoration(
          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: Color(0xff879DBB),
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color:Color(0xff808D9E)
              )
          ),
          hintText:hintText
      ),
      style:AppTextStyles.withColor(AppTextStyles.interRegular16,textGray),
      obscureText: false,
      keyboardType: textInputype??TextInputType.text,
    ),
  );
}