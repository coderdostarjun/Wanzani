import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:wanzani/Screens/onboarding/onboarding_screen_1.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
     Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:
          [Color(0xffFFFFFF),
            Color(0xFF3BC2D0)],
          stops: [
            0.52,
            0.3,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
         Image.asset("assets/images/logo 1.png",height: 100,),
            Spacer(),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Text("Offerte par AZZHY Inc.",style: TextStyle(color: Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w400),),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width/3,
                    decoration:BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                  ),
                  Text("Comores.",style:TextStyle(color: Color(0xffffffff),fontSize: 14,fontWeight: FontWeight.w400),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
