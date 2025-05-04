import 'package:flutter/material.dart';

import '../../../Common Components/AppTextStyles.dart';
Widget commentScreenHeader()
{
  return Row(
    children: [
      Container(
        child: Text(
          "Comments",
          style: AppTextStyles.withColor(
              AppTextStyles.robotoSemiBold16, Color(0xff1F2937)),
        ),
      ),
      Spacer(),
      Image.asset("assets/images/threeDotVerticalIcon.png"),
    ],
  );
}