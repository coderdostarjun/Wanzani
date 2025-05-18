import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wanzani/Controllers/profile/profile_screen_controller.dart';

import '../../../Common Components/AppTextStyles.dart';
import '../../../consts/colors.dart';
Widget profileTabBar() {
  //create obj of HomeScreenContrllers
  final ProfileScreenController controller = Get.put(ProfileScreenController());
  return Column(
    children: [
      Container(
        height: 70,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.profileTab.length,
            itemBuilder: (context, index) {
              return Obx(() => GestureDetector(
                onTap: () => controller.changeTab(index),
                child: Padding(
                    padding: EdgeInsets.only(left: 40,right: 30,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          controller.profileTab[index],
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
                      ],
                    )),
              ));
            }),
      ),
    ],
  );
}
