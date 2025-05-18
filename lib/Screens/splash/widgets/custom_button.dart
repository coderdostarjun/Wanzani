import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {

  final String btnName;
final VoidCallback onpressed;
final Color color;
final IconData? icon;
final Color? textColor;
final Gradient? lineargradeint;
  const CustomButton({super.key, required this.onpressed, required this.color, this.icon, required this.btnName, this.textColor, this.lineargradeint,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onpressed,
        child: Container(
          height:50.h,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              gradient: lineargradeint,
              color: color,
          borderRadius: BorderRadius.circular(11.r)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                   btnName,
                      style: TextStyle(fontSize: 24.sp,color:textColor??Colors.white,),
                    ),
                    SizedBox(width: 2.w),
                    if (icon != null) ...[  // Only show icon and spacing if icon is provided
                      SizedBox(width: 8.w),
                      Icon(icon, color: Colors.white, size: 24.sp)
                    ],
                  ],
                ),
              ],
            ),
        ),
    );
  }
}
