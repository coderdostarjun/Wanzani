import 'package:get/get.dart';

class ProfileScreenController extends GetxController
{
  final selectedIndex = 0.obs;
  void changeTab(int index) {
    selectedIndex.value = index;
  }

List profilInfo=[
  {
    "name": 'Alex Johnson',
    "username": '@alex_johnson',
    "bio": 'Digital enthusiast | Tech lover | Content creator | Exploring the Wanzani universe ✨',
    "location": 'Moroni, Comoros',
    "profileImage": 'assets/profile_image.png',
    "wallet": 2500,
    "points": 2450,
    "followers": 1245,
    "following": 568,
    "posts": 189,
  }
].obs;

List profileTab=["Post","Media","Liked"].obs;


}