import 'package:flutter/material.dart';
import 'package:wanzani/Controllers/radio/radio_controller.dart';
import 'package:get/get.dart';
class Popularradiochannel extends StatelessWidget {
   Popularradiochannel({super.key});
  RadioController controller=Get.put(RadioController());
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(16),
          color: Colors.black,
          child:SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Popular Radio Channels",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff14A0DD),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                //popular radio channel list
                ListView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.subscriptionDetail.length,
                    itemBuilder: (context,index)
                {
                  return Column(
                    children: [
                      Container(
                        height: 192,
                        width: 383,
                        decoration: BoxDecoration(
                          color:Color(0xffDDDDDD),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:Radius.circular(12)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(controller.subscriptionDetail[index]["channelPrfixName"],style: TextStyle(color: Color(0xff999999),fontSize: 60,fontWeight: FontWeight.bold),),
                            Icon(Icons.play_circle_fill_outlined,size: 70,color: Color(0xff14A0DD),),
                            Text(controller.subscriptionDetail[index]["channelSuffixName"],style: TextStyle(color: Color(0xff999999),fontSize: 60,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(bottom: 20),
                        height: 122,
                        width: 383,
                        decoration: BoxDecoration(
                          color:Color(0xffFFFFFF),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight:Radius.circular(12)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 4),
                              decoration: BoxDecoration(
                                color: controller.subscriptionDetail[index]["isSubscription"]==true?Color(0xffA855F7):Color(0xff22C55E),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:Text(controller.subscriptionDetail[index]["subscription"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),),
          );

  }
}
