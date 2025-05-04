import 'package:flutter/material.dart';

import '../../../Common Components/AppTextStyles.dart';

class Liveconainerbox extends StatelessWidget {
  const Liveconainerbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
        EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 2),
        margin: EdgeInsets.only(top: 35,),
        height: 270.44,
        width: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/Background+Shadow.png")),
            color: Color(0xff)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6)),
                color: Color(0xff5b6367),
              ),
              child: Row(
                children: [
                  Icon(Icons.fiber_manual_record,
                      color: Colors.red, size: 20),
                  SizedBox(width: 8),
                  Text("LIVE",
                      style: AppTextStyles.withColor(
                          AppTextStyles.interSemiBold24
                              .copyWith(fontSize: 20),
                          Colors.black)),
                  Spacer(),
                  Icon(Icons.remove_red_eye,
                      color: Colors.black, size: 18),
                  SizedBox(width: 4),
                  Text("24.5K viewers",
                      style: AppTextStyles.withColor(
                          AppTextStyles.interSemiBold24
                              .copyWith(fontSize: 18),
                          Colors.black)),
                ],
              ),
            ),
            // Play Button
            Container(
              margin: EdgeInsets.only(top: 18),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.play_arrow,
                  color: Colors.white, size: 32),
            ),

            //watch now
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6)),
                color: Color(0xff5b6367),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sports Central",
                          style: AppTextStyles.withColor(
                              AppTextStyles.interBold12.copyWith(
                                fontSize: 20,
                              ),
                              Colors.black)),
                      SizedBox(
                        height: 3,
                      ),
                      Text("Premium Channel",
                          style: AppTextStyles.withColor(
                              AppTextStyles.interRegular14
                                  .copyWith(fontSize: 14),
                              Colors.white)),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xff14A0DD),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                          "Watch Now",
                          style: AppTextStyles.withColor(
                              AppTextStyles.interRegular14, Colors.black),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),

      );

  }
}
