import 'package:get/get.dart';

class CommentController extends GetxController
{
  var comments = [
    {
      'user': 'Jessica Thompson',
      'time': '2 hrs ago',
      'comment':
      'This is exactly what I was looking for! The interface is so intuitive, and I love how easy it is to navigate between sections.',
      'likes': 24,
    },
    {
      'user': 'Michael Chen',
      'time': 'Yesterday',
      'comment':
      "I've been using this app for a month now and it's been a game-changer for my productivity. The comment section is especially helpful for collaboration.",
      'likes': 36,
    },
    {
      'user': 'Alex Rodriguez',
      'time': '3 days ago',
      'comment':
      "I'm having an issue with the latest update. When I try to post a comment with an image, it keeps giving me an error. Anyone else experiencing this?",
      'likes': 8,
    },
  ].obs;
}