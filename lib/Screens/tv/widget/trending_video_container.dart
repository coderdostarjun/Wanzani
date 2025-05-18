import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Controllers/tv/tvScreenController.dart';

import '../../../Common Components/AppTextStyles.dart';

class TrendingVideoContainer extends StatelessWidget {
   TrendingVideoContainer({super.key});
   final Tvscreencontroller controller = Get.find<Tvscreencontroller>();

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [
            Obx(()=>
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.tredingVideo.length,
              itemBuilder: (context, index) {
                return Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/playContainer.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 15,
                              right: 15,
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width / 5,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.fiber_manual_record,
                                            color: Colors.white, size: 20),
                                        SizedBox(width: 4),
                                        Text(
                                          "LIVE",
                                          style: AppTextStyles.withColor(
                                            AppTextStyles.interSemiBold24
                                                .copyWith(fontSize: 20),
                                            Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width / 4.5,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      color: Color(0xff525252),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.remove_red_eye,
                                            color: Colors.white, size: 18),
                                        SizedBox(width: 4),
                                        Text(
                                          "${controller.tredingVideo[index]["viewerCount"]/1000}K",
                                          // "24.5K",
                                          style: AppTextStyles.withColor(
                                            AppTextStyles.interSemiBold24
                                                .copyWith(fontSize: 18),
                                            Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 12,
                              right: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.tredingVideo[index]["title"],
                                    // "Sports Network",
                                    style: AppTextStyles.withColor(
                                        AppTextStyles.heading2Medium18,
                                        Colors.white),
                                  ),
                                  Text(
                                    controller.tredingVideo[index]["subtitle"],
                                    style: AppTextStyles.withColor(
                                        AppTextStyles.interRegular14,
                                        Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Color(0xff5b6367),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: controller.tredingVideo[index]["channelColor"],
                                        radius: 16,
                                        child: Center(
                                          child: Text(
                                            controller.tredingVideo[index]["channelInitial"],
                                            style: AppTextStyles.withColor(
                                                AppTextStyles.interRegular16,
                                                Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(controller.tredingVideo[index]["channelName"],
                                          style: AppTextStyles.withColor(
                                              AppTextStyles.interBold12.copyWith(
                                                fontSize: 20,
                                              ),
                                              Colors.white)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  controller.tredingVideo[index]["isPremium"]==true?
                                  Text("Premium",
                                      style: AppTextStyles.withColor(
                                          AppTextStyles.interRegular14
                                              .copyWith(fontSize: 14),
                                          Color(0xffFACC15))):
                                  Text("Free",
                                      style: AppTextStyles.withColor(
                                          AppTextStyles.interRegular14
                                              .copyWith(fontSize: 14),
                                          Color(0xff4ADE80))),
                                ],
                              ),
                              Spacer(),
                              Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width / 5,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xff2563EB),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(
                                      "Watch",
                                      style: AppTextStyles.withColor(
                                          AppTextStyles.interRegular14.copyWith(
                                              fontSize: 16),
                                          Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ),
          ],
        ),
      );
  }
}
