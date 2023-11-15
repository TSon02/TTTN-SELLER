import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/widgets/feature_item_widget.dart';

class FeatureSettingWidgets extends StatelessWidget {
  const FeatureSettingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
      ),
      child: Column(
        children: [
          FeatureItemWidget(
              function: () {},
              iconData: Icons.language,
              featureName: 'Language'),
          FeatureItemWidget(
              function: () {
                // PersistentNavBarNavigator.pushNewScreen(
                //   context,
                //   screen: OrderScreen.provider(),
                //   withNavBar: false,
                //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                // );
              },
              iconData: Icons.notifications,
              featureName: 'Notification'),
          FeatureItemWidget(
              function: () {},
              iconData: Icons.dark_mode,
              featureName: 'Dark Mode'),
          FeatureItemWidget(
              function: () {
                // PersistentNavBarNavigator.pushNewScreen(
                //   context,
                //   screen: OrderScreen.provider(),
                //   withNavBar: false,
                //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                // );
              },
              iconData: Icons.help,
              featureName: 'Help Center'),
        ],
      ),
    );
  }
}
