import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/Screens/home/home_screen.dart';
import 'package:wanzani/Screens/notification/notification_screen.dart';
import 'package:wanzani/Screens/setting/setting_screen.dart';
import 'package:wanzani/consts/colors.dart';
import 'package:wanzani/consts/images.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "Search",
          style: AppTextStyles.withColor(
              AppTextStyles.heading1Medium20, Color(0xff1F2937)),
        ),
        actions: [
          Image.asset(
            "assets/images/searchFilter.png",
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 18,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 33,
                  color: Color(0xff6B7280),
                ),
                filled: true,
                fillColor: Color(0xfff3f4f6),
                hintText: "Search people,posts,hashtags",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Color(0xfff3f4f6),
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide(
                      color: Color(0xfff3f4f6),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 0.2,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff6B7280),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text("Recent Searches",
                    style: AppTextStyles.withColor(
                        AppTextStyles.heading2Medium18
                            .copyWith(fontWeight: FontWeight.w500),
                        Color(0xff1F2937))),
                Spacer(),
                Text(
                  "Clear all",
                  style: AppTextStyles.withColor(
                      AppTextStyles.heading2Small16
                          .copyWith(fontWeight: FontWeight.w500),
                      Color(0xff14A0DD)),
                ),
              ],
            ),
            SizedBox(
              height: 250,
            ),
            Text("Trending",
                style: AppTextStyles.withColor(
                    AppTextStyles.heading2Medium18
                        .copyWith(fontWeight: FontWeight.w500),
                    Color(0xff1F2937))),
          ],

        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () => Get.to(() => HomeScreen()),
                child: Image.asset("assets/images/bottomnavHome.png")),
            InkWell(
                onTap: () => Get.to(() => SearchScreen()),
                child: Image.asset("assets/images/bottomnav_search_blue.png")),
            Container(
                padding: EdgeInsets.only(bottom: 6),
                child: InkWell(
                    onTap: () => {},
                    child: Image.asset("assets/images/bottomnav_blue.png"))),
            InkWell(
                onTap: () => {
                      Get.to(() => NotificationScreen()),
                    },
                child: Image.asset("assets/images/bottomnav_alert.png")),
            InkWell(
              onTap: () => Get.to(() => SettingScreen()),
              child: Image.asset("assets/images/bottomnav_profile.png"),
            ),
          ],
        ),
      ),
    );
  }
}
