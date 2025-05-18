import 'package:flutter/material.dart';
import 'package:wanzani/Screens/home/for_you_home_screen.dart';
import 'package:wanzani/Screens/home/widgets/custom_post_bar.dart';
import 'package:wanzani/Common%20Components/custom_story_bar.dart';
import 'package:wanzani/Screens/home/widgets/custom_tab_bar.dart';
import 'package:wanzani/Screens/home/widgets/custom_user_posts.dart';
import 'package:wanzani/Screens/message/message_screen.dart';
import 'package:wanzani/Screens/search/search_screen.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/tv/home/TvHomeScreen.dart';
import 'package:wanzani/consts/colors.dart';
import 'package:wanzani/consts/images.dart';

import '../../Common Components/AppTextStyles.dart';
import '../../Controllers/home/home_screen_controllers.dart';
import '../radio/radioHUbHomeScreen/radio_hub_screen.dart';

class HomeScreens extends StatelessWidget {
  HomeScreens({super.key});
  //>>create object of HomeScreen Controllers<<
  final HomeScreenControllers controller = Get.put(HomeScreenControllers());
  //create post textediting controllers
  TextEditingController postController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: controller.homeTitle.length,
      child: Scaffold(
        //=>create appbar of a homeScreen
        appBar:AppBar(
          backgroundColor: backgroundColor,
          title:Image.asset(
            logo1,
            height: 32,
            width: 120,
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Get.to(() => SearchScreen());
                },
                child: Image.asset(searchIcon)),
            SizedBox(
              width: 12,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(() => MessageScreen());
                },
                child: Image.asset(chatIcon)),
            SizedBox(
              width: 12,
            ),
          ],

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                 isScrollable: true,
                  indicatorColor: Colors.blue,
                  labelColor: darkprimaryColor,
                  unselectedLabelColor: textGray,
                  dividerHeight: 0,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.only(right: 33),
                  tabs: [
                    Text(
                      controller.homeTitle[0],style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      controller.homeTitle[1],style: TextStyle(fontSize: 18),
                    ), Text(
                      controller.homeTitle[2],style: TextStyle(fontSize: 18),
                    ), Text(
                      controller.homeTitle[3],style: TextStyle(fontSize: 18),
                    ),
                  ]
              ),
            ),
          ),
        ),

        body: TabBarView(children: [
         ForYouHomeScreen(),
          CustomUserPosts(),
          Tvhomescreen(),
          RadioHubScreen(),
        ])
    ),
    );
  }
}
