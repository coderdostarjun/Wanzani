import 'package:flutter/material.dart';
import 'package:wanzani/Screens/home/home_screen.dart';
import 'package:wanzani/Screens/home/home_screens.dart';
import 'package:wanzani/Screens/setting/personal_information.dart';
import 'package:wanzani/Screens/setting/widget/setting_container.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/splash/widgets/custom_button.dart';
import '../../Common Components/AppTextStyles.dart';
import '../../consts/colors.dart';
import '../notification/notification_screen.dart';
import '../search/search_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "Settings",
          style: AppTextStyles.withColor(
              AppTextStyles.robotoSemiBold16, Color(0xff1F2937)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 0.1,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff374151),
              ),
              SizedBox(
                height: 12,
              ),
              Text("ACCOUNT",
                  style: AppTextStyles.withColor(
                      AppTextStyles.heading2Upper12, Color(0xff6B7280))),
              SizedBox(
                height: 22,
              ),

                   GestureDetector(
                      onTap: () => Get.to(() => PersonalInformation()),
                      child: settingContainer("assets/images/personaINfo.png",
                          "Personal Information")),
              SizedBox(
                height: 10,
              ),
              settingContainer(
                  "assets/images/privcypolcy.png", "Privacy & Security"),
              SizedBox(
                height: 10,
              ),
              settingContainer(
                  "assets/images/notifications.png", "Notifications"),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 0.1,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff374151),
              ),
              SizedBox(
                height: 10,
              ),
              Text("PREFERENCES",
                  style: AppTextStyles.withColor(
                      AppTextStyles.heading2Upper12, Color(0xff6B7280))),
              SizedBox(
                height: 22,
              ),
              settingContainer("assets/images/apperance.png", "Apperance"),
              SizedBox(
                height: 10,
              ),
              settingContainer("assets/images/language.png", "Language"),
              SizedBox(
                height: 10,
              ),
              settingContainer("assets/images/contactus.png", "Contact Us"),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 0.1,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff374151),
              ),
              SizedBox(
                height: 10,
              ),
              Text("ABOUT",
                  style: AppTextStyles.withColor(
                      AppTextStyles.heading2Upper12, Color(0xff6B7280))),
              SizedBox(
                height: 10,
              ),
              settingContainer("assets/images/helpcenter.png", "Help Center"),
              SizedBox(
                height: 10,
              ),
              settingContainer(
                  "assets/images/privcyandpolicy.png", "Privacy Policy"),
              SizedBox(
                height: 10,
              ),
              settingContainer(
                  "assets/images/termofservices.png", "Term of Service"),
              SizedBox(
                height: 10,
              ),
              settingContainer("assets/images/appversion.png", "App Version"),
              SizedBox(
                height: 10,
              ),

              //logout button
              CustomButton(
                  onpressed: () {}, color: darkprimaryColor, btnName: "LogOut")
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
                child: Image.asset("assets/images/bottomnav_alert.png")),
            InkWell(
              onTap: () => Get.to(() => SettingScreen()),
              child: Image.asset("assets/images/Link99.png"),
            ),
          ],
        ),
      ),
    );
  }
}
