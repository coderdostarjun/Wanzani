import 'package:flutter/material.dart';
Widget trendingName(String name)
{
  return  Container(
    padding:
    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Text(name,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
  );
}