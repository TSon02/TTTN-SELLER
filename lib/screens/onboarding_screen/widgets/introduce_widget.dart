import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class IntroduceWidget extends StatelessWidget {
  const IntroduceWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(image).image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        TitleTextWidget(
          title: title,
          fontSize: 28,
        ),
        const SizedBox(
          height: 14,
        ),
        SubTitleWidget(subTitle: subTitle),
      ],
    );
  }
}
