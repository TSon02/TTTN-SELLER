import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/widgets/app_bar_widget.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/widgets/features_widget.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/widgets/header_profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          flexibleSpace: AppBarWidget(
            iconData: Icons.settings_outlined,
            isPop: false,
            onClick: () {},
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: const Column(
              children: [
                HeaderProfileWidget(),
                SizedBox(
                  height: 24,
                ),
                FeatureWidgets(),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
