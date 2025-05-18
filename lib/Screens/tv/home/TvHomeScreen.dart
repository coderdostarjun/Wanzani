import 'package:flutter/material.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/Controllers/tv/tvScreenController.dart';
import 'package:wanzani/Screens/tv/featuredChannels/featrued_channels_screen.dart';
import 'package:wanzani/Screens/tv/tvChannels/tvChannleScreen.dart';
import 'package:wanzani/Screens/tv/widget/liveConainerbox.dart';
import 'package:wanzani/consts/colors.dart';

import '../../../consts/images.dart';
import 'package:get/get.dart';

import '../../../Common Components/custom_story_bar.dart';
import '../../message/message_screen.dart';
import '../../search/search_screen.dart';

class Tvhomescreen extends StatelessWidget {
  Tvhomescreen({super.key});
  Tvscreencontroller tvscreencontroller = Get.put(Tvscreencontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //navbar container
                // Container(
                //   child: Row(
                //     children: [
                //       Text(
                //         "Home",
                //         style: AppTextStyles.withColor(
                //             AppTextStyles.heading1Small18, Color(0xff14A0DD)),
                //       ),
                //       Spacer(),
                //       GestureDetector(
                //           onTap: () {
                //             Get.to(() => SearchScreen());
                //           },
                //           child: Image.asset(searchIcon)),
                //       SizedBox(
                //         width: 12,
                //       ),
                //       GestureDetector(
                //           onTap: () {
                //             Get.to(() => MessageScreen());
                //           },
                //           child:
                //               Image.asset("assets/images/messageButton.png")),
                //     ],
                //   ),
                // ),

                SizedBox(
                  height: 12,
                ),

                //storybar container
                Container(
                  // color: Colors.black,
                  child: customStroyBar(
                      bgcolor: Colors.black,
                      textcolor: Color(0xff14A0DD),
                      controller: tvscreencontroller),
                ),

                //live container box
                Liveconainerbox(),

                //stream live tv
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stream Live TV",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Access thousands of channels with real-time viewing stats. "
                      "Choose from free channels or premium subscriptions for an ad-free experience.",
                      style: AppTextStyles.withColor(
                          AppTextStyles.interRegular16.copyWith(fontSize: 19.5),
                          Colors.black),
                    ),
                    SizedBox(height: 24),

                    // Get Started Button
                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: darkprimaryColor,
                      ),
                      child: InkWell(
                        onTap: ()=>Get.to(()=>FeatruedChannelsScreen()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Get Started",
                                style: AppTextStyles.withColor(
                                    AppTextStyles.interMedium15_9, Colors.white)),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: ()=>Get.to(()=>Tvchannlescreen()),
                      child: Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width / 2.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: backgroundColor,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.4,
                            )),
                        child: Center(
                            child: Text("Explore Channels",
                                style: AppTextStyles.withColor(
                                    AppTextStyles.interMedium15_9,
                                    Colors.black))),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Feature: 1000+ Channels
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: darkprimaryColor,
                          child: Icon(Icons.play_circle_fill,
                              color: Colors.white, size: 24),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1000+ Channels",
                                style: AppTextStyles.withColor(
                                    AppTextStyles.interBold12
                                        .copyWith(fontSize: 18),
                                    Colors.black)),
                            Text("TV & Radio",
                                style: AppTextStyles.withColor(
                                    AppTextStyles.interRegular14,
                                    Colors.black)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: lightPrimaryColor,
                          child:
                              Icon(Icons.people, color: Colors.white, size: 24),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10M+ Users",
                                style: AppTextStyles.withColor(
                                    AppTextStyles.interBold12
                                        .copyWith(fontSize: 18),
                                    Colors.black)),
                            Text("WorldWide",
                                style: AppTextStyles.withColor(
                                    AppTextStyles.interRegular14,
                                    Colors.black)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
