import 'package:get/get.dart';

class MessageScreenController extends GetxController
{
  List messageTitle = ["All", "Unread", "Groups", "Online"].obs;
  final selectedIndex = 0.obs; // Track selected tab index
  void changeTab(int index) {
    selectedIndex.value = index;
  }
}