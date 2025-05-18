import 'package:flutter/material.dart';
import 'package:wanzani/Screens/home/widgets/custom_post_bar.dart';
import 'package:wanzani/Common%20Components/custom_story_bar.dart';
import 'package:wanzani/Screens/home/widgets/custom_tab_bar.dart';
import 'package:wanzani/Screens/home/widgets/custom_user_posts.dart';
import 'package:wanzani/Screens/message/message_screen.dart';
import 'package:wanzani/Screens/search/search_screen.dart';
import 'package:get/get.dart';
import 'package:wanzani/consts/images.dart';

import '../../Controllers/home/home_screen_controllers.dart';
class ForYouHomeScreen extends StatelessWidget {
  ForYouHomeScreen({super.key});
  //create obj of HomeScreenContrllers
  final HomeScreenControllers controller = Get.put(HomeScreenControllers());
  TextEditingController postController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //customStoryBar
                customStroyBar(controller: controller),
                //custom post_section bar
                customPostBar(postController),
                //user Post
                CustomUserPosts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
