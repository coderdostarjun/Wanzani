import 'package:flutter/material.dart';
import 'package:wanzani/consts/colors.dart';
Widget VerificationNumberRow({String? text, Color? color})
{
  return Container(
height: 59.32,
width: 47.46,
decoration: BoxDecoration(
  color: color ?? Colors.white,
borderRadius: BorderRadius.circular(11.86),
border: Border.all(
  color: Color(0xffE0DCE1)
),
),
child: Center(child: Text(text??"",style: TextStyle(fontSize: 28,color: Colors.white),)),
);
}