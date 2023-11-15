import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton(
      {super.key,
      this.icon,
      required this.title,
      required this.quantity,
      this.image,
      this.onNav});

  final IconData? icon;
  final String title;
  final String quantity;
  final String? image;
  final void Function()? onNav;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNav,
      child: Container(
        width: 160,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 35, 19, 61),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  quantity,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   width: 24,
            // ),
            image != null
                ? Image.asset(
                    image!,
                    color: Colors.white,
                    width: 40,
                  )
                : Icon(
                    icon,
                    size: 40,
                    color: Colors.white,
                  ),
          ],
        ),
      ),
    );
  }
}
