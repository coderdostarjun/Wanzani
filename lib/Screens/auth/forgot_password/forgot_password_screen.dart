import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Common%20Components/commonTexfield1.dart';
import 'package:wanzani/Screens/auth/create_account/create_account_screen.dart';
import 'package:wanzani/Screens/auth/login/login_screeen.dart';
import '../../../Common Components/AppTextStyles.dart';
import '../../../consts/colors.dart';
import '../../../consts/images.dart';
import '../../splash/widgets/custom_button.dart';
import '../widget/authinfo.dart';
import '../widget/verificationNumberRow.dart';

class ForgotPasswordScreen extends StatelessWidget {
 ForgotPasswordScreen({super.key});
TextEditingController emailPhone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xff252525),
            size: 30,
          ),
          onPressed: () {
            Get.to(LoginScreeen());
          },
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 50,
          ),
          //welcome content
          authInfo("Forgot Password",
              "Enter your registered email address to get\nverification code"),
          SizedBox(
            height: 20,
          ),
          commonTextField1(emailPhone, "Email or Phone Number"),
          SizedBox(
            height: 20,
          ),
          CustomButton(
              onpressed: () {}, color: darkprimaryColor, btnName: "Send"),

        ]),
      ),
    );
  }
}
