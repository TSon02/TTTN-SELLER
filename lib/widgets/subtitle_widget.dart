import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    super.key,
    required this.subTitle,
    this.isCenter = false,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
  });
  final String subTitle;
  final bool isCenter;
  final FontWeight fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: isCenter ? TextAlign.center : null,
      subTitle,
      style: TextStyle(
          fontSize: fontSize,
          color: Colors.black.withOpacity(0.5),
          fontWeight: fontWeight),
    );
  }
}
