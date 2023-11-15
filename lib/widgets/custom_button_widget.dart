import 'dart:developer';

import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.title,
    this.iconData,
    this.borderColor,
    required this.onClick,
    this.iconColor,
  });

  final Color backgroundColor;
  final Color textColor;
  final String title;
  final IconData? iconData;
  final Color? borderColor;
  final Color? iconColor;
  final void Function() onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log('click clicked');
        onClick();
      },
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(24),
            border: borderColor != null
                ? Border.all(
                    width: 2,
                    color: borderColor!,
                  )
                : null),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconData != null)
              Icon(
                iconData,
                color: iconColor,
              ),
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
