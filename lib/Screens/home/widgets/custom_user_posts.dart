import 'package:flutter/material.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/consts/colors.dart';
import 'package:wanzani/consts/images.dart';

import '../../../Controllers/home/home_screen_controllers.dart';
import 'package:get/get.dart';

class CustomUserPosts extends StatelessWidget {
  const CustomUserPosts({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenControllers controller = Get.put(HomeScreenControllers());
    return Container(
      padding: EdgeInsets.only(left: 12,right: 12,top: 30,bottom: 22),
      child: SingleChildScrollView(
        child: Obx(() => ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.userPost.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(controller.userPost[index]["image"]),
                          radius: 20,
                        ),
                        SizedBox(width: 22),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.userPost[index]["name"],
                              style: AppTextStyles.withColor(
                                  AppTextStyles.robotoSemiBold16,
                                  Color(0xff1F2937)),
                            ),
                            SizedBox(width: 14),
                            Text(
                              controller.userPost[index]["time"],
                              style: AppTextStyles.withColor(
                                  AppTextStyles.robotoRegular14, textGray),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(thereeDotIcon),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.only(left: 4, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.userPost[index]["content"],
                            style: AppTextStyles.withColor(
                                AppTextStyles.robotoRegular16,
                                Color(0xff1F2937)),
                          ),
                          Text(
                            controller.userPost[index]["hashtag"],
                            style: AppTextStyles.withColor(
                                AppTextStyles.robotoRegular16,
                                Color(0xff2563EB)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                   controller.userPost[index]["image"]!=null? Image.asset(controller.userPost[index]["image"]):SizedBox.shrink(),
                    SizedBox(height: 25),
                    Container(
                      height: 0.5,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff6B7280),
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_border_outlined,color: Color(0xff6B7280),),
                        SizedBox(width: 4),
                        Text(controller.userPost[index]["like"],style: TextStyle(fontSize:16,color:Color(0xff6B7280),),),
                        SizedBox(width: 16),
                        Image.asset(chatIcon),
                        Text(controller.userPost[index]["comment"],style: TextStyle(fontSize:16,color:Color(0xff6B7280),),),
                        Spacer(),
                        Icon(Icons.share,color: Color(0xff6B7280),),
                        SizedBox(width: 4,),
                        Text('Share',style: TextStyle(fontSize:16,color:Color(0xff6B7280),),),
                      ],
                    ),
                    SizedBox(height: 24,),
                  ],
                );
              },
            )),
      ),
    );
  }
}
