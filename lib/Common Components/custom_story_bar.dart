import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AppTextStyles.dart';
import '../consts/colors.dart';
Widget customStroyBar({Color? bgcolor,Color? textcolor,required GetxController controller}) {
  //create obj of HomeScreenContrllers

  // final HomeScreenControllers controller = Get.put(HomeScreenControllers());
  return Column(
    children: [
      Container(
        color: bgcolor??backgroundColor,
        //Listview.builder ko direction row ma huda height and column ma huda width purai leuna khojxa
        //so ahile row ma xa purai height legna khojew error auxa so we fixed its height
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: (controller as dynamic ) .storyBar.length,
            itemBuilder: (context, index) {
              return Obx(() => GestureDetector(
                    onTap: () => (controller as dynamic ) .changeTab(index),
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              width: 66,
                              height: 66,
                              decoration: BoxDecoration(
                                image:index==0?DecorationImage(image:AssetImage("assets/images/background11.png",),):DecorationImage(image:AssetImage("assets/images/Backgroundstory.png",),),
                                  // gradient: LinearGradient(colors: [Color(0xffEF4444),Color(0xffEC4899)]),
                                  shape: BoxShape.circle, // color: Colors.red,
                                  // border: Border.all(
                                  //   color: index == 0
                                  //       ? Color(0xffEF4444)
                                  //       : Color(0xffEC4899),
                                  //   width: 5,
                                  // )
                              ),
                              
                              child: Image.asset(
                                  (controller as dynamic ) .storyBar[index]["image"]),
                            ),
                            SizedBox(
                              height: 5.2,
                            ),
                            //name:
                            Text(
                              (controller as dynamic ) .storyBar[index]["name"],
                              style: AppTextStyles.withColor(
                                  AppTextStyles.robotoRegular16,
                                 textcolor??Color(0xff1F2937)),
                            ),
                          ],
                        )),
                  ));
            }),
      ),
    ],
  );
}
