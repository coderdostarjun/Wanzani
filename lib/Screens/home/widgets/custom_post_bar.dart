import 'package:flutter/material.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/consts/colors.dart';
import 'package:wanzani/consts/images.dart';
Widget customPostBar(controllerName)
{
  // TextEditingController whatIsonYourMin=TextEditingController();
return Container(
  padding: EdgeInsets.only(top: 30),
  child:
    Column(
      children:[ SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.asset("assets/images/User55.png",height: 43,width: 55,),
            SizedBox(width: 12,),
            Container(
              width:300,
              child: TextField(
                controller: controllerName,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xfff3f4f6),
                  hintText: "What's on your mind?",
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Color(0xfff3f4f6),
                    )
                  ),
                  focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(
                        color: Color(0xfff3f4f6),
                      )
                  ),

                ),
              ),

            ),
          ],
        ),
      ),
        SizedBox(height: 12,),
        Container(
          height: 0.4,
          width: 350,
          color: Color(0xff6B7280),
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            SizedBox(width: 32,),
            Image.asset(imageIcon),
            SizedBox(width: 10,),
            Text("Photo",style: AppTextStyles.withColor(AppTextStyles.buttonLarge16, Color(0xff6B7280)),),
            SizedBox(width: 42,),
            Image.asset(videoIcon),
            SizedBox(width: 10,),
            Text("Video",style: AppTextStyles.withColor(AppTextStyles.buttonLarge16, Color(0xff6B7280)),),
            SizedBox(width: 42,),
            Image.asset(locationIcon),
            SizedBox(width: 10,),
            Text("Location",style: AppTextStyles.withColor(AppTextStyles.buttonLarge16, Color(0xff6B7280)),)
          ],
        )
  ],
    )
)  ;
}