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


List channels=[
  {
    'title': 'Sports Central',
    'subtitle': 'Live Sports Coverage',
    'network': 'Sports Network',
    'channelInitial': 'SN',
    'networkColor': Colors.purple,
    'airingNow': 'NBA Finals',
    'isPremium': true,
    'viewCount': 24500,
  },
  {
    'title': 'World News 24',
    'subtitle': 'Global News Coverage',
    'network': 'Global Media',
    'channelInitial': 'GM',
    'networkColor': Colors.red,
    'airingNow': 'Breaking News',
    'isPremium': false,
    'viewCount': 16700,
  },
  {
    'title': 'Entertainment Plus',
    'subtitle': 'Reality Shows & Series',
    'network': 'EntMedia Group',
    'channelInitial': 'EG',
    'networkColor': Colors.purple,
    'airingNow': 'Celebrity Showdown',
    'isPremium': true,
    'viewCount': 19200,
  },
  {
    'title': 'Movie Central',
    'subtitle': 'Blockbuster Movies',
    'network': 'FilmStream',
    'channelInitial': 'FS',
    'networkColor': Colors.green,
    'airingNow': 'Action Classics',
    'isPremium': false,
    'viewCount': 11900,
  },
].obs;

//tv channel lsit

}