import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:wanzani/consts/images.dart';
class HomeScreenControllers extends GetxController {
  //obs mean observable ho ,it's become reacitve if we use .obs and automatically notify garxa listner lai if there is change occur on value
  // var paidToday=135.00.obs;

  List homeTitle = ["For You", "Following", "Live", "Market"].obs;
  final selectedIndex = 0.obs; // Track selected tab index

  void changeTab(int index) {
    selectedIndex.value = index;
  }

  List storyBar = [
    {
      "image": plus,
      "name": "Add Story",
    }, {
      "image": user1,
      "name": "Fatima",
    }, {
      "image": user2,
      "name": "Ahmed",
    }, {
      "image": user3,
      "name": "Marie",
    },
    {
      "image": user4,
      "name": "Jean",
    }
  ].obs;

  List userPost = [
    {
      'name': 'Sarah Johnson',
      'time': '2 hours ago. Public',
      'content': 'Just discovered the new Wanzani app! It\'s amazing how it connects people across Comoros and beyond. 🌍 #DigitalCommunity \n#ConnectingAfrica',
      'hashtag':"#DigitalCommunity  #ConnectingAfrica",
      'image': 'assets/images/Post image.png',
      "like":"58",
      'comment':"286",

      // Add your image in assets and pubspec.yaml
    },
    {
      'name': 'Mohamed Ali',
      'time': '5 hours ago. Public',
      'content': 'Just discovered the new Wanzani app! It\'s amazing how it connects people across Comoros and beyond. 🌍 #DigitalCommunity\n#ConnectingAfrica',
      'hashtag':"#DigitalCommunity  #ConnectingAfrica",
      'image': 'assets/images/Post image.png',
      "like":"24",
      'comment':"142",
      // Add your image in assets and pubspec.yaml
    },
    {
      'name': 'Arjun Khanal',
      'time': '10 hours ago. Public',
      'content': 'Just discovered the new Wanzani app! It\'s amazing how it connects people across Comoros and beyond. 🌍 #DigitalCommunity\n#ConnectingAfrica',
      'hashtag':"#DigitalCommunity  #ConnectingAfrica",
      'image': 'assets/images/Post image.png',
      "like":"224",
      'comment':"542",
      // Add your image in assets and pubspec.yaml
    },
  ].obs;
}