import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/onboarding/onboarding_screen_2.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_header.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_widget.dart';
import 'package:wanzani/Screens/splash/widgets/custom_button.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.only(top:36 ),
          child: Column(
            children: [
             OnboardingCommonHeader(),
              SizedBox(height: 2,),
              OnboardingCommonWidget.ImageAvatar(),
              OnboardingCommonWidget.personalDetail(heading: "Welcome to Wanzani",subHeading: "Connect with friends, share moments, and\n    discover content that matters to you."),

              SizedBox(height: 115,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                height: 8,
                width: MediaQuery.of(context).size.width/12,
                decoration:BoxDecoration(
                    color: Color(0xff00B0E7),
                    border: Border.all(
                        color: Color(0xff00B0E7),
                    ),
                  borderRadius: BorderRadius.circular(6)
                ),
              ),
                  SizedBox(width: 3,),
                  Container(
                    width: 10,
                    height: 8,
                    child: CircleAvatar(backgroundColor:Color(0xffd1d5db),
                    ),
                  ),
                  SizedBox(width: 3,),
                  Container(
                    width: 10,
                    height: 8,
                    child: CircleAvatar(backgroundColor:Color(0xffd1d5db),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Expanded(child: CustomButton(onpressed: ()
                {
                  Get.to(OnboardingScreen2());
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen2()));
                },color: Color(0xff14A0DD), btnName: 'Next',icon: Icons.keyboard_arrow_right,)),
            ],
          ),
        ),
      ) ,
    );
  }
}
