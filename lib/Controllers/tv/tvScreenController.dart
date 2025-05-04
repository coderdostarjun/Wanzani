import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:wanzani/consts/images.dart';
class Tvscreencontroller extends GetxController {

  final selectedIndex = 0.obs; // Track selected tab index
  void changeTab(int index) {
    selectedIndex.value = index;
  }

  List storyBar = [
    {
      "image": "assets/images/Your Story.png",
      "name": "Your Story",
    }, {
      "image":"assets/images/Amir.png",
      "name": "Amir",
    }, {
      "image": "assets/images/User.png",
      "name": "Marie",
    }, {
      "image": user3,
      "name": "David",
    },
    {
      "image": "assets/images/NIna.png",
      "name": "NIna",
    }
  ].obs;

  //trendingnow list
List tredingVideo=[
  {
  'title': 'Sports Network',
  'subtitle': 'Live NBA Finals',
  'channelId': 'sn',
  'channelName': 'Sports Now',
  'channelInitial': 'SN',
  'viewerCount': 24300,
  'isPremium': true,
  'channelColor': Colors.blue,
  },
  {
  'title': 'News 24/7',
  'subtitle': 'Breaking News',
  'channelId': 'n24',
  'channelName': 'Global News',
  'channelInitial': 'N4',
  'viewerCount': 18700,
  'isPremium': false,
  'channelColor': Colors.red,
  },
  {
  'title': 'Music Channel',
  'subtitle': 'Top Charts Show',
  'channelId': 'mc',
  'channelName': 'Music Vibes',
  'channelInitial': 'MC',
  'viewerCount': 12500,
  'isPremium': true,
  'channelColor': Colors.purple,
  },
  {
  'title': 'Movie Central',
  'subtitle': 'New Releases',
  'channelId': 'mc2',
  'channelName': 'Cine Plus',
  'channelInitial': 'CP',
  'viewerCount': 9800,
  'isPremium': false,
  'channelColor': Colors.green,
  }
].obs;

//tv channel lsit

}