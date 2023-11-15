import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/widgets/features_settings_widget.dart';
import 'package:trendy_treasures_seller/utils/utils.dart';
import 'package:trendy_treasures_seller/widgets/custom_button_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  // static BlocProvider<CardCubit> provider() {
  //   return BlocProvider(
  //     create: (context) {
  //       return CardCubit();
  //     },
  //     child: const PersonalDetailsScreen(),
  //   );
  // }

  @override
  State<PersonalDetailsScreen> createState() => PersonalDetailsScreenState();
}

class PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   leading: const SizedBox(),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   flexibleSpace: AppBarWidget(
        //     isPop: true,
        //     // iconData: Icons.done,
        //     onClick: () {
        //       // PersistentNavBarNavigator.pushNewScreen(
        //       //   context,
        //       //   screen: AddNewCardScreen.provider(),
        //       //   withNavBar: false, // OPTIONAL VALUE. True by default.
        //       //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
        //       // );
        //     },
        //   ),
        // ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 36,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/image10.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -5,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(
                                      3.0,
                                      3.0,
                                    ),
                                    blurRadius: 4,
                                  ), //BoxShadow
                                ],
                              ),
                              child: const Icon(
                                Icons.edit,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const TitleTextWidget(
                        title: 'Upload image',
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Form(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: MediaQuery.sizeOf(context).width / 1.8,
                            child: TextFormField(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: MediaQuery.sizeOf(context).width / 1.8,
                            child: TextFormField(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: MediaQuery.sizeOf(context).width / 1.8,
                            child: TextFormField(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                const TitleTextWidget(
                  title: 'Settings',
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const FeatureSettingWidgets(),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomButtonWidget(
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    title: 'Log Out',
                    onClick: () async {
                      await logOut(context: context);
                    },
                    iconData: Icons.logout,
                    iconColor: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
