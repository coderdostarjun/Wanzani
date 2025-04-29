import 'package:flutter/material.dart';
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
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.only(top:36 ),
          child: Column(
            children: [
              OnboardingCommonHeader(),
              SizedBox(height: 20,),
              OnboardingCommonWidget.ImageAvatar(),
              OnboardingCommonWidget.personalDetail(heading: "Discover All Features",
                  subHeading: "Live TV, radio channels, messaging, and a\n       marketplace - all in one app."),

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
                Get.to(OnboardingScreen3());
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen3()));
              },color: Color(0xff14A0DD), btnName: 'Next',icon: Icons.keyboard_arrow_right,)),
            ],
          ),
        ),
      ) ,
    );
  }
}
