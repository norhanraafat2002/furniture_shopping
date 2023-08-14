import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  AppText({
    super.key,
    required this.title,
    required this.color,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
  });

  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
