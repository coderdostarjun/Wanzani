import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Controllers/profile/profile_screen_controller.dart';
import 'package:wanzani/Screens/home/widgets/custom_user_posts.dart';
import 'package:wanzani/Screens/profile/widget/profile_tab_bar.dart';

class ProfilScreen extends StatelessWidget {
  ProfilScreen({super.key});
  ProfileScreenController profileScreenController =
      Get.put(ProfileScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F2937),
      appBar: AppBar(
        backgroundColor: Color(0xff1F2937),
        title: Text(
          "MyProfile",
          style: TextStyle(color: Color(0xff374151), fontSize: 26),
        ),
        actions: [
          Icon(
            Icons.qr_code_scanner,
            color: Color(0xff374151),
            size: 22,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.settings,
            color: Color(0xff374151),
            size: 22,
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(19),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/GradientProfile.png",
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white24)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Alex Johnson",
                                    style: TextStyle(
                                        color: Color(0xff374151), fontSize: 20),
                                  ),
                                  Text(
                                    "@Alex_ohdfj",
                                    style: TextStyle(
                                        color: Color(0xff374151), fontSize: 18),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xffDCFCE7),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "wallet:2.5kUSD",
                                  style: TextStyle(
                                      color: Color(0xff14A0DD), fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xffDCFCE7),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "wallet:2.5kUSD",
                                  style: TextStyle(
                                      color: Color(0xff14A0DD), fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "akdf;af",
                              style: TextStyle(color: Color(0xff374151)),
                            ),
                            Text(
                              "jd;fa",
                              style: TextStyle(
                                color: Color(0xff374151),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "3.34",
                                  style: TextStyle(color: Color(0xff374151)),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(color: Color(0xff374151)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Column(
                              children: [
                                Text(
                                  "3.34",
                                  style: TextStyle(color: Color(0xff374151)),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: Color(0xff374151),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Column(
                              children: [
                                Text(
                                  "3.34",
                                  style: TextStyle(color: Color(0xff374151)),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(color: Color(0xff374151)),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 123,
                    child: Image.asset("assets/images/Container WithImg.png")),
              ],
            ),

            //profile tab
            profileTabBar(),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: CustomUserPosts(
              textColor: Colors.white,
            )),
          ],
        ),
      ),
    );
  }
}
