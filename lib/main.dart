import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/onboarding/onboarding_screen_1.dart';
import 'package:wanzani/Screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xffFFFFFF),
      ),
      home: SplashScreen(),
    );
  }
}

