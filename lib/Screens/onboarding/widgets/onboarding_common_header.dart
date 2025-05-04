import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Controllers/onboarding/onboarding_screen_controller.dart';
import 'package:wanzani/Screens/auth/login/login_screeen.dart';
import 'package:wanzani/consts/colors.dart';

import '../../../Common Components/UIDesignHelper.dart';

class OnboardingCommonHeader extends StatelessWidget {
  OnboardingScreenController controller=Get.put(OnboardingScreenController());
  OnboardingCommonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       GestureDetector(
    onTap: (){ Get.to(LoginScreeen());},
    child: Text("Skip",style:Uihelper.normalTextStyle1())),
        Spacer(),
        Obx(() {
          return DropdownButton<String>(
            dropdownColor:backgroundColor,
            value: controller.selectedLanguage.value, //dropdown ma suruma  dekhena value
            icon:Icon(Icons.arrow_drop_down_outlined,size: 20,color: Color(0xff00B0E7),),
            onChanged: controller.changeLanguage, //dropdown ma select garera change huda changelanuage bala function lai call garyo
            items: controller.language.map((String lang) {               //map ra callbackfunction use garera list of string lai dropdown ma convert
              return DropdownMenuItem(
                value: lang,
                child: Text(lang,style:Uihelper.normalTextStyle1()),
              );
            }).toList(),
          );
        }),

  ]
        // Text("French",style:Uihelper.normalTextStyle1()),
        // Icon(Icons.arrow_drop_down_outlined,size: 20,color: Color(0xff00B0E7),),],
    );
  }
}
