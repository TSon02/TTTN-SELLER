// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.isPop,
    this.iconData,
    required this.onClick,
    this.ctx,
  }) : super(key: key);

  final bool isPop;
  final IconData? iconData;
  final void Function() onClick;
  final BuildContext? ctx;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment:
            isPop ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
        children: [
          if (isPop)
            GestureDetector(
              onTap: () {
                Navigator.maybePop(context);
              },
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          GestureDetector(
            onTap: onClick,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(
                  iconData,
                  color: Colors.black,
                  size: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
