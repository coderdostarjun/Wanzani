import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreenController extends GetxController
{
  var selectedLanguage="French".obs;

 final language=["French","English","Arabic"];

  void changeLanguage(String ? lang)
  {
    if(lang!=null)
      {
        selectedLanguage.value=lang;
      }
  }
}