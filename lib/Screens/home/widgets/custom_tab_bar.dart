import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Common Components/AppTextStyles.dart';
import '../../../Controllers/home/home_screen_controllers.dart';
import '../../../consts/colors.dart';
Widget customTabBar() {
  //create obj of HomeScreenContrllers
  final HomeScreenControllers controller = Get.put(HomeScreenControllers());
  return Column(
    children: [
      Container(
        height: 70,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.homeTitle.length,
            itemBuilder: (context, index) {
              return Obx(() => GestureDetector(
                    onTap: () => controller.changeTab(index),
                    child: Padding(
                        padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                        child: Column(
                          children: [
                            Text(
                              controller.homeTitle[index],
                              style: AppTextStyles.withColor(
                                  AppTextStyles.robotoSemiBold16,
                                  controller.selectedIndex.value == index
                                      ? darkprimaryColor
                                      : textGray),
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            ///AnimatedContainer
                            AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              height: 3,
                              width: controller.selectedIndex.value == index
                                  ? 60
                                  : 0,
                              decoration: BoxDecoration(
                                color: darkprimaryColor,
                                borderRadius: BorderRadius.circular(1.5),
                              ),
                            ),

                            ///NormalContainer
                            // Container(
                            //   height: 3,
                            //   width: 60,
                            //   decoration: BoxDecoration(
                            //     color: controller.selectedIndex.value==index ? darkprimaryColor:Colors.transparent,
                            //     borderRadius: BorderRadius.circular(2),
                            //   ),
                            // )
                          ],
                        )),
                  ));
            }),
      ),
    ],
  );
}
