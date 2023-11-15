import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/route_generator.dart';
import 'package:trendy_treasures_seller/widgets/custom_button_widget.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class SuccessfullScreen extends StatelessWidget {
  const SuccessfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: Colors.green)),
                      child: const Icon(
                        Icons.done,
                        color: Colors.green,
                        size: 45,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TitleTextWidget(
                      title: 'Successful!',
                      fontSize: 26,
                    ),
                    const SubTitleWidget(
                      isCenter: true,
                      subTitle:
                          'You have successfully registered in our app and start working in it.',
                    ),
                  ],
                ),
              ),
            ),
            CustomButtonWidget(
              backgroundColor: Colors.black,
              textColor: Colors.white,
              title: 'Start Shopping',
              onClick: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, RouteGenerator.menuScreen, (route) => false);
              },
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
