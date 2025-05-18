import 'package:flutter/material.dart';
import 'package:wanzani/Screens/radio/popularGenres/popular_genres_screen.dart';
import 'package:wanzani/Screens/radio/popularRadioChannel/popularRadioChannel.dart';
import 'package:wanzani/Screens/radio/trending/radio_trending_screens.dart';
import 'package:wanzani/consts/colors.dart';

class RadioHubScreen extends StatelessWidget {
  const RadioHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   backgroundColor: backgroundColor,
      //   title: Center(
      //     child: Text(
      //       "RadioHUb",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      // ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(5),
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 20),
                child: Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              //main screen
              Stack(
                children: [
                  Container(
                    height: 594,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        "assets/images/Backgroundradio.png",
                      )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          color: Color(0xffDDDDDD),
                          child: Center(
                            child: Text(
                              "400 * 400",
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 10),
                          height: 30,
                          width: 130,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff86b1b7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Text(
                                "Featured Station",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 10),
                              )),
                        ),
                        Text(
                          "Syntwave FM",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 50, top: 15, bottom: 15),
                            child: Text(
                              "The ultimate station for retro electronic vibes",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.remove_red_eye,
                                color: Colors.white, size: 18),
                            SizedBox(width: 4),
                            Text("4.2M Views",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(width: 16),
                            Icon(Icons.play_circle_outline,
                                color: Colors.white, size: 18),
                            SizedBox(width: 4),
                            Text("Now Playing",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // FREE badge
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Text(
                            "FREE",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Play Now button
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow,
                              color: Color(0xff4F46E5)),
                          label: const Text("Play Now",
                              style: TextStyle(color: Color(0xff4F46E5))),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.favorite_border, color: Colors.white),
                              SizedBox(width: 8),
                              Text("Add to Favorites",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
          
              //integrate all other screen in same screen
              PopularGenresScreen(),
              Popularradiochannel(),
              RadioTrendingScreens(),
            ],
          ),
        ),
      ),
    );
  }
}
