import 'package:get/get.dart';

class RadioController extends GetxController
{
  List popularGenres=[
    {
      "image":"assets/images/pop.png",
    },
    {
      "image":"assets/images/rock.png",
    },
    {
      "image":"assets/images/jazz.png",
    },
    {
      "image":"assets/images/hipHop.png",
    },
    {
      "image":"assets/images/classical.png",
    },
    {
      "image":"assets/images/electronics.png",
    },


  ].obs;

  List subscriptionDetail=[
    {
      "channelPrfixName":"600",
      "channelSuffixName":"300",
      "subscription":"FREE",
      "isSubscription":false,
    },
    {
      "channelPrfixName":"600",
      "channelSuffixName":"301",
      "subscription":"PREMIUM",
      "isSubscription":true,
    }
  ];
  List genreDetails=[
    {
      "preText":"500",
      "postText":"250",
      "name":"Hip Hop",
      "stations":"15",
    },
    {
      "preText":"500",
      "postText":"251",
      "name":"Electronic",
      "stations":"23",
    },
    {
      "preText":"500",
      "postText":"252",
      "name":"Rock",
      "stations":"18",
    },
    {
      "preText":"500",
      "postText":"253",
      "name":"Jazz",
      "stations":"12",
    },
    {
      "preText":"500",
      "postText":"253",
      "name":"Classical",
      "stations":"9",
    },

  ].obs;
 List radioshows = [
   {
     "preText":"200",
     "postText":"200",
     'title': 'Morning Buzz',
     'description': 'Wake up with the latest hits',
     'schedule': 'Daily • 6-9AM',
     'views': '2.4M views',
     'isPremium': false,
   },
   {
     "preText":"200",
     "postText":"201",
     'title': 'Late Night Vibes',
     'description': 'Chill music for night owls',
     'schedule': 'Daily • 10PM-2AM',
     'views': '1.8M views',
     'isPremium': true,
   },
  ].obs;

}