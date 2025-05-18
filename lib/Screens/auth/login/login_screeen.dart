import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/Common%20Components/commonTexfield1.dart';
import 'package:wanzani/Screens/auth/create_account/create_account_screen.dart';
import 'package:wanzani/Screens/auth/forgot_password/forgot_password_screen.dart';
import 'package:wanzani/Screens/auth/widget/authinfo.dart';
import 'package:wanzani/Screens/auth/widget/socialMediaRow.dart';
import 'package:wanzani/Screens/home/home_screen.dart';
import 'package:wanzani/Screens/home/home_screens.dart';
import 'package:wanzani/Screens/splash/widgets/custom_button.dart';
import 'package:wanzani/consts/colors.dart';
import 'package:wanzani/consts/images.dart';
class LoginScreeen extends StatelessWidget {
   LoginScreeen({super.key});

  //creating controller
 final TextEditingController _emailPhoneNumber= TextEditingController();
  TextEditingController  password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       padding: EdgeInsets.all(20.w),
       child:SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             //app bar with logo
             Container(
                padding: EdgeInsets.symmetric(horizontal: 96,vertical: 66),
                child: Image.asset(logo1),
              ),
             //welcome content
             authInfo("Welcome to Wanzani", "Hello there, Log in to continue"),
         
             //email or phone number textfield
             SizedBox(height: 20.0.h,),
            commonTextField1(_emailPhoneNumber,"Email or Phone Number"),
             //password TexField
             SizedBox(height: 15.0.h,),
             SizedBox(
               width: 400.w,
               child: TextField(
                 controller: password,
                 decoration: InputDecoration(
                     enabledBorder:OutlineInputBorder(
                         borderRadius: BorderRadius.circular(6.r),
                         borderSide: BorderSide(
                           color: Color(0xff879DBB),
                         ),
                     ),
                     focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                             color:Color(0xff808D9E)
                         )
                     ),
                     hintText:"Enter Password",
                   suffixIcon: Image.asset("assets/images/eye-slash.png"),
                 ),
                 style:AppTextStyles.withColor(AppTextStyles.interRegular16,textGray),
                 obscureText: true,
                 keyboardType: TextInputType.text,
         
               ),
             ),
             SizedBox(height: 20.h,),
                 Align(
                   alignment: Alignment.centerRight,
                     child: TextButton(onPressed: (){
                       Get.to(ForgotPasswordScreen());
                     }, child: Text("Forget Password?",style: AppTextStyles.withColor(AppTextStyles.interMedium12.copyWith(fontSize: 14), Colors.black),),)),
             SizedBox(height: 15.h,),
             Column(
               children: [
                 CustomButton(onpressed: () {
                   Get.offAll(HomeScreens());
                 }, color: darkprimaryColor, btnName: 'Login',),
                 SizedBox(height: 50.h,),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image.asset("assets/images/Line 9.png",),
                       SizedBox(width: 25.w,),
                       Text("OR",style: AppTextStyles.withColor(AppTextStyles.interRegular16.copyWith(fontWeight: FontWeight.w400),Colors.black),),
                       SizedBox(width: 25.w,),
                       Image.asset("assets/images/Line 9.png",),
                     ],
                   ),
                 ),
                 SizedBox(height: 35.h,),
                 //social media icon row
                 SocialMediaRow(),
                 SizedBox(height: 20.h,),
                 Image.asset("assets/images/languageConatiner.png",),
               ],
             ),
         
           ],
         ),
       ),
     ),
    );
  }
}
