import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trendy_treasures_seller/screens/onboarding_screen/widgets/introduce_widget.dart';
import 'package:trendy_treasures_seller/screens/splash_screen/splash_screen_sc.dart';
import 'package:trendy_treasures_seller/utils/list.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(
                      () {
                        _currentPage = value;
                        log(_currentPage.toString());
                      },
                    );
                  },
                  children: List.generate(images.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: IntroduceWidget(
                          image: images[index],
                          title: titles[index],
                          subTitle: subTitles[index]),
                    );
                  })),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              margin: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: images.length,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      SharedPreferences _prefs =
                          await SharedPreferences.getInstance();
                      setState(() {
                        log(_pageController.page.toString());
                        if (_currentPage == 2) {
                          _prefs.setString('used', 'true');
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(
                            builder: (context) {
                              return const SplashScreenSecond();
                            },
                          ), (route) => true);
                        }
                        _pageController.animateToPage(_currentPage + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      });
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
