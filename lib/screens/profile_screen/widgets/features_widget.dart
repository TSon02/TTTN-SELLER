import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures_seller/screens/personal_details_screen/personal_details_screen.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/widgets/feature_item_widget.dart';

class FeatureWidgets extends StatelessWidget {
  const FeatureWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    // final userProvider = Provider.of<UserProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
      ),
      child: Column(
        children: [
          FeatureItemWidget(
              function: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const PersonalDetailsScreen(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              iconData: Icons.person,
              featureName: 'Personal Details'),
          FeatureItemWidget(
              function: () {},
              iconData: Icons.question_mark_outlined,
              featureName: 'FAQs'),
          FeatureItemWidget(
              function: () {
                // PersistentNavBarNavigator.pushNewScreen(
                //   context,
                //   screen: OrderScreen.provider(),
                //   withNavBar: false,
                //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                // );
              },
              iconData: Icons.privacy_tip,
              featureName: 'Privacy Policy'),
          FeatureItemWidget(
              function: () {},
              iconData: Icons.settings,
              featureName: 'Settings'),
        ],
      ),
    );
  }
}
