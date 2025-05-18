import 'package:flutter/material.dart';
import 'package:get/get.dart';

class notificationContoller extends GetxController
{
  final selectedIndex = 0.obs;

  List notificationTitle = ["All", "Unread", "Likes", "Comments","Follow"].obs;
  void changeTab(int index) {
    selectedIndex.value = index;
  }


List notifications=[
{
"image": "assets/images/user5.png",
"title": "Ahmed Hassan liked your post",
"subtitle": "Digital literacy is essential for the youth of Comoros to...",
"time": "12 min ago",
"iconColor": Colors.red,
  "isread":false,
  "category":"likes",
},
{
"image": "assets/images/User 4.png",
"title": "Fatima Said commented on your post",
"subtitle": "I totally agree! We need more initiatives like this...",
"time": "45 min ago",
"iconColor": Colors.green,
  "isread":false,
  "category":"comments",

},
{
"image": "assets/images/User11.png",
"title": "Ibrahim Mohamed started following you",
"subtitle": "",
"time": "2 hours ago",
"iconColor": Colors.blue,
  "isread":true,
  "category":"follow",

},
{
"image": "assets/images/User 2.png",
"title": "Marie Claire mentioned you in a comment",
"subtitle": "@kamalibrahim What do you think about this new initiative?",
"time": "3 hours ago",
"iconColor": Colors.purple,
  "isread":true,
  "category":"mentioned",

},
{
  "image": "assets/images/User 2.png",
"title": "You earned 50 points for daily activity",
"subtitle": "+50 - 60% to next level",
"time": "6 hours ago",
"iconColor": Colors.amber,
  "isread":true,
  "category":"earned",

},
{
  "image": "assets/images/User 2.png",
"title": "Ali Mbae sent you a message",
"subtitle": "Hello! Are you available for a quick chat about the project?",
"time": "Yesterday",
"iconColor": Colors.blue,
  "isread":false,
  "category":"message",

},
{
  "image": "assets/images/User 2.png",
"title": "Tech Comoros invited you to an event",
"subtitle": "Digital Transformation Workshop",
"time": "Yesterday",
"iconColor": Colors.cyan,
  "isread":false,
  "category":"invite",

}
].obs;


}