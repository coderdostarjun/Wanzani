import 'package:flutter/material.dart';
import 'package:wanzani/Screens/tv/widget/tvchannellist.dart';
class Tvchannlescreen extends StatelessWidget {
  Tvchannlescreen({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(18),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 34,bottom: 80),
                      child: Text(
                        "TV Channels",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
              
                  //list of channels
                  Container(
                    padding: EdgeInsets.only(left:10,right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xff14A0DD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:Text("All Channels", style: TextStyle(color: Colors.white,fontSize: 18)),
                              ),
                            Container(
                              padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xff14A0DD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:Text("Sports", style: TextStyle(color: Colors.white,fontSize: 18)),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xff14A0DD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:Text("News", style: TextStyle(color: Colors.white,fontSize: 18)),
                              ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xff14A0DD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:Text("Entertainment", style: TextStyle(color: Colors.white,fontSize: 18)),
                            ),
                            Container(
                              padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xff14A0DD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:Text("Movies", style: TextStyle(color: Colors.white,fontSize: 18)),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xff14A0DD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:Text("Kids", style: TextStyle(color: Colors.white,fontSize: 18)),
                            ),
                          ],
                        ),
              
                        SizedBox(height: 30,),
                        //search channel
                        TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 33,
                              color: Color(0xff9CA3AF),
                            ),
                            filled: true,
                            fillColor: Color(0xffD3EDF9),
                            hintText: "Search channels..",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xfff3f4f6),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(60),
                                borderSide: BorderSide(
                                  color: Color(0xfff3f4f6),
                                )),
                          ),
                        ),
              
                        //sort by most popular
                        SizedBox(height: 18,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sort by:",style: TextStyle(fontSize: 18),),
                            SizedBox(width: 16,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xffD3EDF9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:Text("Most Popular", style: TextStyle(color: Colors.black,fontSize: 22)),
                            ),
                          ],
                        ),
                        SizedBox(height: 22,),
              
                        //tv channel list
                        Tvchannellist(),
              
                      ],
                    ),
                  )
                        
                ],
              ),
            ),
          ),
        ),
    );
  }
}
