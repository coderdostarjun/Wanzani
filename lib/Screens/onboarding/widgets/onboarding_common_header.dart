import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/auth/login/login_screeen.dart';

import '../../../Common Components/UIDesignHelper.dart';

class OnboardingCommonHeader extends StatelessWidget {
  const OnboardingCommonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       GestureDetector(
    onTap: (){ Get.to(LoginScreeen());},
    child: Text("Skip",style:Uihelper.normalTextStyle1())),
        Spacer(),
        Text("French",style:Uihelper.normalTextStyle1()),
        Icon(Icons.arrow_drop_down_outlined,size: 20,color: Color(0xff00B0E7),),],
    );
  }
}
