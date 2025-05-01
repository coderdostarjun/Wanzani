import 'package:flutter/material.dart';
class OnboardingCommonWidget
{

  //image avatar
  static ImageAvatar()
  {
    return Container(
      margin: EdgeInsets.only(top: 80,bottom: 10),
      height: 224,
      width: 192,
      child: CircleAvatar(
        child: Image.asset("assets/images/Welcome to Wanzani.png"),
      ),
    );
  }

  //personalDetail
  static personalDetail({required String heading ,required String subHeading})
  {
   return Container(
      padding: EdgeInsets.all(3),
      child: Column(
        children: [
          Center(child: Text(heading,style: TextStyle(fontWeight: FontWeight.w600,fontSize:36,color: Color(0xff00B0E7), ),)),
          SizedBox(height: 18,),
          Text(subHeading,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),)
        ],
      ),
    );
  }

}