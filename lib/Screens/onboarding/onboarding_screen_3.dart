import 'package:flutter/material.dart';
import 'package:wanzani/Screens/auth/create_account/create_account_screen.dart';
import 'package:wanzani/Screens/auth/login/login_screeen.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_header.dart';
import 'package:wanzani/Screens/onboarding/widgets/onboarding_common_widget.dart';
import 'package:get/get.dart';
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
          child: SingleChildScrollView(
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
                    SizedBox(width: 3,),
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
                  ],
                ),
                SizedBox(height: 30,),

                 CustomButton(onpressed: ()
                {
                  Get.to(CreateAccountScreen());
                },color: Color(0xffEAEAEA), btnName: 'Create Account',textColor: Colors.black,),
              SizedBox(height: 20,),
                 CustomButton(onpressed: ()
                {
                  Get.to(LoginScreeen());
                },color: Color(0xff14A0DD), btnName: 'Login'),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
