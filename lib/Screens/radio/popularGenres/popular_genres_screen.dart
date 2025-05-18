import 'package:flutter/material.dart';
import 'package:wanzani/Controllers/radio/radio_controller.dart';
import 'package:get/get.dart';
class PopularGenresScreen extends StatelessWidget {
   PopularGenresScreen({super.key});
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
                      "Popular Genres",
                      style: TextStyle(
                        fontSize: 24,
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
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: controller.popularGenres.length,
                    itemBuilder: (context,index)
                    {
                      return Image.asset(controller.popularGenres[index]["image"]);
                    })
              ],
            ),
          ),
    );
  }
}
