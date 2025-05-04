import 'package:flutter/material.dart';
import 'package:wanzani/Screens/tv/widget/liveConainerbox.dart';
import 'package:wanzani/Screens/tv/widget/trending_video_container.dart';

import '../../../Common Components/AppTextStyles.dart';

class FeatruedChannelsScreen extends StatelessWidget {
  const FeatruedChannelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff041e2a),
          padding: EdgeInsets.all(14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //heading container
                Container(
                  margin: EdgeInsets.only(top: 22),
                  child: Column(
                    children: [
                      Text(
                        "Featured Channels",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: EdgeInsets.only(top: 18, left: 22, right: 1,bottom: 22),
                        child: Text(
                          "   Discover our most popular streaming channels with real-time viewer counts and\n            subscription details.",
                          style: AppTextStyles.withColor(
                              AppTextStyles.interRegular16, Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
            
                //trending now
                SizedBox(height: 12,),
                Row(
                  children: [
                    Text(
                      "Trending Now",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Color(0xff404040),
                      radius: 15,
                      child: Icon(Icons.keyboard_arrow_left,size: 25,color: Colors.white,),
                    ),
                    SizedBox(width: 12,),
                    CircleAvatar(
                      backgroundColor: Color(0xff404040),
                      radius: 15,
                      child: Icon(Icons.keyboard_arrow_right,size: 25,color: Colors.white,),
                    )
                  ],
                ),
               TrendingVideoContainer(),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
