import 'package:flutter/material.dart';
import 'package:wanzani/Controllers/notification/notification_controller.dart';
import 'package:wanzani/Screens/home/home_screens.dart';
import 'package:wanzani/Screens/notification/widgets/custom_notification_bar.dart';
import 'package:get/get.dart';
import '../../Common Components/AppTextStyles.dart';
import '../../consts/colors.dart';
import '../home/home_screen.dart';
import '../search/search_screen.dart';
import '../setting/setting_screen.dart';
class NotificationScreen extends StatelessWidget {
 NotificationScreen({super.key});
notificationContoller controller = Get.put(notificationContoller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: Text(
            "Notifications",
            style: AppTextStyles.withColor(
                AppTextStyles.heading1Medium20, Color(0xff1F2937)),
          ),
          actions: [
            Image.asset(
              "assets/images/searchFilter.png",
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 30,
            ),
            Image.asset(
              "assets/images/threeDotVerticalIcon.png",
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
      body: Container(
        padding: EdgeInsets.all(3),
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              customnotificatonTabBar(),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.notifications.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: controller.notifications[index]["isread"]?backgroundColor:Color(0xffEFF6FF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(controller.notifications[index]["image"]),
                          ),
                          title: Text(controller.notifications[index]["title"]),
                          subtitle: Text(controller.notifications[index]["subtitle"]),
                        ),
                    Row(
                      children: [
                        SizedBox(width: 55,),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:controller.notifications[index]["iconColor"],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(controller.notifications[index]["time"], style: TextStyle(fontSize: 12)),
                      ],
                    ),
                        Divider(
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: Container(
    padding: EdgeInsets.all(10),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    InkWell(
    onTap: () => Get.offAll(() => HomeScreens()),
    child: Image.asset("assets/images/bottomnavHome.png")),
    InkWell(
    onTap: () => Get.to(() => SearchScreen()),
    child: Image.asset("assets/images/Link-3.png")),
    Container(
    padding: EdgeInsets.only(bottom: 6),
    child: InkWell(
    onTap: () => {},
    child: Image.asset("assets/images/bottomnav_blue.png"))),
    InkWell(
    onTap: () => {
    Get.to(() => NotificationScreen()),
    },
    child: Image.asset("assets/images/bluenotification.png")),
    InkWell(
    onTap: () => Get.to(() => SettingScreen()),
    child: Image.asset("assets/images/bottomnav_profile.png"),
    ),
    ],
    ),
    ),
    );
  }
}
