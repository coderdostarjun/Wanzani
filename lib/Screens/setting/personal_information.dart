import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Screens/setting/subscription_screen.dart';
class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[300],
                  child: Text("300×300"),
                ),
                SizedBox(height: 20),
                // Name and membership detilas
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text("Member since January 2023",style: TextStyle(fontSize: 20),),
                SizedBox(height: 10),
            
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff404040),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(Icons.edit_outlined,color: Colors.white,),
                      SizedBox(width: 13,),
                      Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 18),)
                    ],
                  ),
                ),
                Text("Email",
                    style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500)),
                Text("johndoe@example.com",
                    style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500)),
                SizedBox(height: 20),
                SizedBox(
                  height: 20,
                ),
                Text("Subscription",
                    style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w400)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "PREMIUM",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
            Text("\$9.99/month",style:TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w400),),
                SizedBox(height: 20),
                   Text("Listening Time\n143 hours",
                      style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
            
                Text("Favorite Genre\nElectronic, Jazz",
                      style: TextStyle(fontSize: 16)),
            
                SizedBox(height: 30),
            
                // Buttons
                InkWell(
                  onTap: ()=>Get.to(()=>SubscriptionScreen()),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff14A0DD)
                    ),
                    child: Text("Manage Subscription",style: TextStyle(fontSize: 16,color: Colors.white),),
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff404040)
                  ),
                  child: Text("Payment Methods",style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff404040)
                  ),
                  child: Text("Notification Settings",style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
