import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanzani/Common%20Components/AppTextStyles.dart';
import 'package:wanzani/Screens/comment/widget/comment_screen_header.dart';
import 'package:wanzani/consts/colors.dart';
import 'package:wanzani/consts/images.dart';
import '../../Controllers/comment/comment_controller.dart';

class DisplayCommentScreen extends StatelessWidget {
  final CommentController controller = Get.put(CommentController());
  DisplayCommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            children: [
              commentScreenHeader(),
              SizedBox(height: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Obx(() {
                    return controller.comments.isEmpty
                        ? Center(child: Text("No comments yet"))
                        : ListView.builder(
                      itemCount: controller.comments.length,
                      itemBuilder: (context, index) {
                        final comment = controller.comments[index];
                        return Card(
                          color: backgroundColor,
                          margin: EdgeInsets.symmetric(vertical: 8),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Header row
                                Row(
                                  children: [
                                    CircleAvatar(child: Image.asset("assets/images/Your Profile.png")),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        comment['user'].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 16,color: Color(0xff1F2937)),
                                      ),
                                    ),
                                    Text(comment['time'].toString(),
                                        style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                                SizedBox(height: 10),
                                // Comment text
                                Text(comment['comment'].toString(),style:AppTextStyles.withColor(AppTextStyles.interRegular16, Color(0xff4B5563)),),
                                SizedBox(height: 10),
                                // Like & Reply row
                                Row(
                                  children: [

                                    Image.asset("assets/images/like_icon.png"),
                                    SizedBox(width: 4),
                                    Text('Like (${comment['likes']}),',style:AppTextStyles.withColor(AppTextStyles.interRegular14, Color(0xff4B5563),),),
                                    SizedBox(width: 16),
                                    Image.asset(chatIcon),
                                    Text('Reply',style:AppTextStyles.withColor(AppTextStyles.interRegular14, Color(0xff4B5563)),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),

      // Add a comment input field at the bottom if needed in future by asking team leader
      // bottomNavigationBar:
      // Padding(
      //   padding: EdgeInsets.all(18.0),
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: TextField(
      //           // controller: controller,
      //           decoration: InputDecoration(
      //             filled: true,
      //             fillColor: Color(0xffCFD2D4),
      //             hintText: 'Add a comment...',
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(24),
      //             ),
      //             contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      //           ),
      //         ),
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.send, color: Color(0xff6C6969)),
      //         onPressed: ()=>{},
      //       ),
      //     ],
      //   ),
      // ),

    );
  }
}