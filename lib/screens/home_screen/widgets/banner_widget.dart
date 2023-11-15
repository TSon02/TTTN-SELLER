import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trendy_treasures_seller/screens/home_screen/widgets/banner_item_widget.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final PageController _pageController = PageController(initialPage: 0);
  late Timer _timer;
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (_pageController.page! < 2) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(_currentPage,
            duration: const Duration(milliseconds: 500), curve: Curves.linear);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      PageView(
        controller: _pageController,
        children: const [
          BannerItemWidget(),
          BannerItemWidget(),
          BannerItemWidget(),
        ],
      ),
      Positioned(
        bottom: 80,
        child: SmoothPageIndicator(
          controller: _pageController, // PageController
          count: 3,
          effect: const SwapEffect(
            activeDotColor: Colors.white,
            dotWidth: 13,
            dotHeight: 13,
            dotColor: Colors.indigo,
          ), // your preferred effect
          onDotClicked: (index) {},
        ),
      )
    ]);
  }
}
