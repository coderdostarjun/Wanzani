import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wanzani/Controllers/createAccount/create_account_screen_controller.dart';
import 'package:wanzani/Screens/auth/verify_account/verify_account_screen.dart';
import 'package:wanzani/Screens/onboarding/onboarding_screen_3.dart';
import 'package:wanzani/consts/colors.dart';
import 'package:wanzani/consts/images.dart';

import '../../../Common Components/AppTextStyles.dart';
import '../../../Common Components/commonTexfield1.dart';
import '../../splash/widgets/custom_button.dart';
import '../widget/authinfo.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({super.key});
  CreateAccountScreenController controller=Get.put(CreateAccountScreenController());
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController enterPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xff252525),
            size: 30.sp,
          ), onPressed: () {
            Get.to(()=>OnboardingScreen3());
        },
        ),
        backgroundColor: backgroundColor,
        title: Center(
            child: Image.asset(
          logo1,
          height: 31.h,
          width: 194.w,
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              //welcome content
              authInfo(
                  "Create Account!", "Please enter your details to proceed "),
              //email or phone number textfield
              SizedBox(
                height: 15.0.h,
              ),
              commonTextField1(firstName, "FirstName"),
              SizedBox(
                height: 15.0.h,
              ),
              commonTextField1(lastName, "Last Name"),
              SizedBox(
                height: 15.0.h,
              ),
              commonTextField1(email, "Email",textInputype: TextInputType.emailAddress),
              SizedBox(
                height: 15.0.h,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    commonTextField1(code, "Code", size: 90,textInputype: TextInputType.number),
                    SizedBox(
                      width: 10.w,
                    ),
                    commonTextField1(phoneNumber, "Phone Number", size: 271,textInputype: TextInputType.number),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              //password TexField
              SizedBox(
                width: 400.w,
                child: TextField(
                  controller: enterPassword,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        color: Color(0xff879DBB),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff808D9E))),
                    hintText: "Enter Password",
                    suffixIcon: Image.asset("assets/images/eye-slash.png"),
                  ),
                  style: AppTextStyles.withColor(
                      AppTextStyles.interRegular16, textGray),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),

              SizedBox(
                height: 15.h,
              ),
              Obx(() => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Checkbox(
                      value: controller.isChecked.value,
                      onChanged: controller.checkUnchek,
                    ),
                    Text("I agree to the ", style: AppTextStyles.withColor(AppTextStyles.interRegular16, Color(0xff808D9E))),
                    SizedBox(width: 3,),
                    Text("Terms and Privacy Policy", style: AppTextStyles.withColor(AppTextStyles.interRegular16, Color(0xff00B0E7))),
                  ],
                ),
              )),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  CustomButton(
                    onpressed: () {
                      Get.to(VerifyAccountScreen());
                    },
                    color: darkprimaryColor,
                    btnName: 'Create Account',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
