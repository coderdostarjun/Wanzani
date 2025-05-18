import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/onboarding/onboarding_screen_2.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_header.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_widget.dart';
import 'package:wanzani/Screens/splash/widgets/custom_button.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical:28.w),
          margin: EdgeInsets.only(top: screenHeight * 0.05.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
               OnboardingCommonHeader(),
                SizedBox(height: 2.h,),
                OnboardingCommonWidget.ImageAvatar(),
                OnboardingCommonWidget.personalDetail(heading: "Welcome to Wanzani",subHeading: "Connect with friends, share moments, and\n    discover content that matters to you."),
            
                SizedBox(height: 115.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                  height: 8.h,
                  width: MediaQuery.of(context).size.width/12,
                  decoration:BoxDecoration(
                      color: Color(0xff00B0E7),
                      border: Border.all(
                          color: Color(0xff00B0E7),
                      ),
                    borderRadius: BorderRadius.circular(6)
                  ),
                ),
                    SizedBox(width: 3.w,),
                    Container(
                      width: 10.w,
                      height: 8.h,
                      child: CircleAvatar(backgroundColor:Color(0xffd1d5db),
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
                SizedBox(height: 28.h,),
                 CustomButton(onpressed: ()
                  {
                    Get.to(OnboardingScreen2());
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen2()));
                  },color: Color(0xff14A0DD), btnName: 'Next',icon: Icons.keyboard_arrow_right,),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
