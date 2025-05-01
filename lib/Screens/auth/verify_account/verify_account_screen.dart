import 'package:flutter/material.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/Screens/auth/create_account/create_account_screen.dart';
import 'package:wanzani/Screens/auth/widget/verificationNumberRow.dart';
import 'package:wanzani/Screens/home/home_screen.dart';
import 'package:wanzani/Screens/splash/widgets/custom_button.dart';
import 'package:get/get.dart';
import '../../../consts/colors.dart';
import '../../../consts/images.dart';
import '../widget/authinfo.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Get.to(()=>CreateAccountScreen());
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Color(0xff252525),
              size: 30,
            ),
          ),
          backgroundColor: backgroundColor,
          title: Center(
              child: Image.asset(
            logo1,
            height: 31,
            width: 194,
          )),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 50,
            ),
            //welcome content
            authInfo("Verify Acoount",
                "Verify your account by entering verification code\nsent to abcd@gmail.com"),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerificationNumberRow(text: "4",color: Color(0xff00B0E7)),
                SizedBox(width: 16,),
                VerificationNumberRow(),SizedBox(width: 16,),
                VerificationNumberRow(),SizedBox(width: 16,),
                VerificationNumberRow(),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Text("Code will resend in",style: AppTextStyles.withColor(AppTextStyles.buttonMedium13_9, textGray),),
                SizedBox(width: 4,),
                Text("56 s",style: AppTextStyles.withColor(AppTextStyles.robotoSemiBold16, textDark),)
              ],
            ),
            SizedBox(height: 20,),
            CustomButton(onpressed: (){
              Get.to(()=>HomeScreen());
            }, color: darkprimaryColor, btnName: "Confirm"),
                SizedBox(height: 20,),
                CustomButton(onpressed: (){}, btnName: "Resend", color: Colors.white,lineargradeint: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff14A0DD),Color(0xffFFFFFF)]),),

            //email or phone number textfield
          ]),
        ));
  }
}
