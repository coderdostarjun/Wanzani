import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Controllers/tv/tvScreenController.dart';

import '../../../Common Components/AppTextStyles.dart';

class Tvchannellist extends StatelessWidget {
  Tvchannellist({super.key});
  final Tvscreencontroller controller = Get.find<Tvscreencontroller>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Obx(
            () => ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.channels.length,
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
                                      "assets/images/BackgroundPopular.png"),
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
                                    width:
                                        MediaQuery.of(context).size.width / 5,
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
                                    width:
                                        MediaQuery.of(context).size.width / 4.5,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      color: Color(0xff14A0DD),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.remove_red_eye,
                                            color: Colors.white, size: 18),
                                        SizedBox(width: 4),
                                        Text(
                                          "${controller.channels[index]["viewCount"] / 1000}K",
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
                          ],
                        ),
                        //bottom sheet

                        Container(
                            padding: EdgeInsets.all(12),
                            height: 152,
                            color: Color(0xffD3EDF9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                  controller.channels[index]["title"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        controller.channels[index]["subtitle"],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff9CA3AF)),
                                    ),
                                    SizedBox(height: 6,),                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              controller.channels[index]
                                                  ["networkColor"],
                                          radius: 16,
                                          child: Center(
                                            child: Text(
                                              controller.channels[index]
                                                  ["channelInitial"],
                                              style: AppTextStyles.withColor(
                                                  AppTextStyles.interRegular16,
                                                  Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                            controller.channels[index]
                                                ["network"],
                                            style: AppTextStyles.withColor(
                                                AppTextStyles.interBold12
                                                    .copyWith(
                                                  fontSize: 20,
                                                ),
                                                Colors.white)),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "Airing: ${controller.channels[index]
                                      ["airingNow"]}",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff9CA3AF)),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: controller.channels[index]["isPremium"] ==true?Color(0xffCA8A04):Color(0xff16A34A),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: controller.channels[index]
                                                  ["isPremium"] ==
                                              true
                                          ? Text("Premium",
                                              style: AppTextStyles.withColor(
                                                  AppTextStyles.interRegular14
                                                      .copyWith(fontSize: 14),
                                                  Colors.black))
                                          : Text("Free",
                                              style: AppTextStyles.withColor(
                                                  AppTextStyles.interRegular14
                                                      .copyWith(fontSize: 14),
                                                  Colors.black)),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          3.5,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Color(0xff14A0DD),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Center(
                                          child: Text(
                                        "Watch Now",
                                        style: AppTextStyles.withColor(
                                            AppTextStyles.interRegular14
                                                .copyWith(fontSize: 16),
                                            Colors.white),
                                      )),
                                    ),
                                  ],
                                ),
                              ],
                            )),
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
