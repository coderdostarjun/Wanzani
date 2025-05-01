import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Common Components/AppTextStyles.dart';
import '../../../Controllers/home/home_screen_controllers.dart';
import '../../../consts/colors.dart';
Widget customStroyBar({Color? color}) {
  //create obj of HomeScreenContrllers
  final HomeScreenControllers controller = Get.put(HomeScreenControllers());
  return Column(
    children: [
      Container(
        //Listview.builder ko direction row ma huda height and column ma huda width purai leuna khojxa
        //so ahile row ma xa purai height legna khojew error auxa so we fixed its height
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.storyBar.length,
            itemBuilder: (context, index) {
              return Obx(() => GestureDetector(
                    onTap: () => controller.changeTab(index),
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              width: 66,
                              height: 66,
                              decoration: BoxDecoration(
                                  // gradient: LinearGradient(colors: [Color(0xffEF4444),Color(0xffEC4899)]),
                                  shape: BoxShape.circle, // color: Colors.red,
                                  border: Border.all(
                                    color: index == 0
                                        ? Color(0xffEF4444)
                                        : Color(0xffEC4899),
                                    width: 5,
                                  )),
                              child: Image.asset(
                                  controller.storyBar[index]["image"]),
                            ),
                            SizedBox(
                              height: 5.2,
                            ),
                            //name:
                            Text(
                              controller.storyBar[index]["name"],
                              style: AppTextStyles.withColor(
                                  AppTextStyles.robotoRegular16,
                                  Color(0xff1F2937)),
                            ),
                          ],
                        )),
                  ));
            }),
      ),
    ],
  );
}
