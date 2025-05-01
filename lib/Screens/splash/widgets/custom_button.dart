import 'package:flutter/material.dart';
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
          height: 66,
          width: 400,
          decoration: BoxDecoration(
              gradient: lineargradeint,
              color: color,
          borderRadius: BorderRadius.circular(11)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                 btnName,
                    style: TextStyle(fontSize: 24,color:textColor??Colors.white,),
                  ),
                  SizedBox(width: 2),
                  if (icon != null) ...[  // Only show icon and spacing if icon is provided
                    SizedBox(width: 8),
                    Icon(icon, color: Colors.white, size: 24)
                  ],
                ],
              ),
            ],
          ),
        ),
    );
  }
}
