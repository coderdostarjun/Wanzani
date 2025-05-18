import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/auth/login/login_screeen.dart';
import 'package:wanzani/Screens/comment/comment_screen.dart';
import 'package:wanzani/Screens/comment/display_comment_screen.dart';
import 'package:wanzani/Screens/home/home_screen.dart';
import 'package:wanzani/Screens/home/home_screens.dart';
import 'package:wanzani/Screens/notification/notification_screen.dart';
import 'package:wanzani/Screens/onboarding/onboarding_screen_1.dart';
import 'package:wanzani/Screens/profile/profile_screen.dart';
import 'package:wanzani/Screens/radio/popularGenres/popular_genres_screen.dart';
import 'package:wanzani/Screens/radio/popularRadioChannel/popularRadioChannel.dart';
import 'package:wanzani/Screens/radio/trending/radio_trending_screens.dart';
import 'package:wanzani/Screens/setting/setting_screen.dart';
import 'package:wanzani/Screens/splash/splash_screen.dart';

import 'Screens/tv/home/TvHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(360, 690),
      minTextAdapt:true,
      splitScreenMode:true,
      builder:(_ , child)
          {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                scaffoldBackgroundColor: Color(0xffFFFFFF),
              ),
              home: SplashScreen(),
              // home: ProfilScreen(),
              //   home:NotificationScreen(),
              // home:HomeScreens(),
            );
          },
    );
  }
}

