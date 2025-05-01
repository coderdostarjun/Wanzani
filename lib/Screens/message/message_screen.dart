import 'package:flutter/material.dart';
import 'package:wanzani/Screens/message/widget/custom_message_bar.dart';
import 'package:wanzani/consts/images.dart';
class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          color:Color(0xff1e1e1e),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
               children: [
                 Image.asset("assets/images/message_heading.png",),
                 Spacer(),
                 Image.asset(searchIcon),
                 SizedBox(width: 8,),
                 Image.asset("assets/images/message_add_button.png"),
                 SizedBox(width: 8,),
                 Image.asset("assets/images/message_info_button.png"),

               ]
              ),
              SizedBox(height: 8,),
              Container(
                height: 0.2,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffF9FAFB),
              ),
              customMessageBar(),
              Container(
                height: 0.2,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffF9FAFB),
              ),
              Expanded(child: Container(
              ))
            ],
          ),
        ),
      ),
    );
  }
}
