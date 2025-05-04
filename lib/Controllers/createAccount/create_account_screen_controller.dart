import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CreateAccountScreenController extends GetxController
{
var isChecked=false.obs;

void checkUnchek(bool? value)
{
  isChecked.value=value ?? false;
}
}