import 'package:flutter/material.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/Screens/comment/widget/comment_screen_header.dart';

class CommentScreen extends StatelessWidget {
  CommentScreen({super.key});
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
           commentScreenHeader(),
            SizedBox(
              height: 14,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffE5E7EB),
            ),
            SizedBox(
              height: 22,
            ),
            Expanded(
                flex: 22,
                child: Image.asset(
                  "assets/images/3c7a2362b5be2d5e63a52b3915c8ef3f (1) 1.png",
                )),
            Spacer(),

            //type your comment section
            Stack(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: TextField(
                        controller: commentController,
                        decoration: InputDecoration(
                          // suffixIcon:
                          filled: true,
                          fillColor: Color(0xffCFD2D4),
                          hintText: "Type your message",
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
                    ),
                  ),
                  Image.asset("assets/images/Send.png"),
                ],
              ),
              Positioned(
                top: 18,
                right: 32,
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: SingleChildScrollView(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/images/Vector-2.png"),
                        SizedBox(
                          width: 24,
                        ),
                        Image.asset("assets/images/Emoji.png"),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}
