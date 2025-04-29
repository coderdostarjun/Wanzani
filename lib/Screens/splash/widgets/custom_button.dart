import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
final VoidCallback onpressed;
final Color color;
final IconData? icon;
final Color? textColor;
  const CustomButton({super.key, required this.onpressed, required this.color, this.icon, required this.btnName, this.textColor,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onpressed,
        child: Container(
          height: 56,
          width: 350,
          decoration: BoxDecoration(color: color,
          borderRadius: BorderRadius.circular(10)),
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
      ),
    );
  }
}
