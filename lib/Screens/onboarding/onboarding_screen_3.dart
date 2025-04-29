import 'package:flutter/material.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_header.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_widget.dart';

import '../splash/widgets/custom_button.dart';
import 'onboarding_screen_1.dart';
class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.only(top:30 ),
          child: Column(
            children: [
              OnboardingCommonHeader(),
              SizedBox(height: 1,),
              OnboardingCommonWidget.ImageAvatar(),
              OnboardingCommonWidget.personalDetail(heading: "Get Started",
                  subHeading: "Create your account or login to start\n   connecting with your community."),
              SizedBox(height: 50,),
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
            Expanded(
              child: CustomButton(onpressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
              },color: Color(0xffEAEAEA), btnName: 'Create Account',textColor: Colors.black,),
            ),
            SizedBox(height: 20,),
              Expanded(child: CustomButton(onpressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
              },color: Color(0xff14A0DD), btnName: 'Login')),
            ],
          ),
        ),
      ) ,
    );
  }
}
