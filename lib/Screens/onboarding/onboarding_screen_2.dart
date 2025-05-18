import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wanzani/Screens/onboarding/onboarding_screen_3.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_header.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_widget.dart';

import '../splash/widgets/custom_button.dart';
class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.all(25.w),
          margin: EdgeInsets.only(top:36.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h,),
                OnboardingCommonWidget.ImageAvatar(),
                OnboardingCommonWidget.personalDetail(heading: "Discover All Features",
                    subHeading: "Live TV, radio channels, messaging, and a\n       marketplace - all in one app."),

                SizedBox(height: 65.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10.w,
                      height: 8.h,
                      child: CircleAvatar(backgroundColor:Color(0xffd1d5db),
                      ),
                    ),
                    SizedBox(width: 3.w,),
                    Container(
                      height: 8.h,
                      width: MediaQuery.of(context).size.width/12,
                      decoration:BoxDecoration(
                          color: Color(0xff00B0E7),
                          border: Border.all(
                            color: Color(0xff00B0E7),
                          ),
                          borderRadius: BorderRadius.circular(6.r)
                      ),
                    ),
                    SizedBox(width: 3.w,),
                    Container(
                      width: 10.w,
                      height: 8.h,
                      child: CircleAvatar(backgroundColor:Color(0xffd1d5db),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
                CustomButton(onpressed: ()
                {
                  Get.to(OnboardingScreen3());
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen3()));
                },color: Color(0xff14A0DD), btnName: 'Next',icon: Icons.keyboard_arrow_right,),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
