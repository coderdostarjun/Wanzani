import 'package:flutter/material.dart';
class Tvchannlescreen extends StatelessWidget {
  const Tvchannlescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 34),
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
                Column(
                  children: [
                    Row(
                      children: [

                      ],
                    )
                  ],
                )
          
              ],
            ),
          ),
        ),
    );
  }
}
