// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:developer';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/route_generator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AfterLayoutMixin<SplashScreen> {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    log('message');
    await getUserAndCtrollPage();
  }

  Future<void> getUserAndCtrollPage() async {
    await context.read<UserProvider>().getUserData(context);

    await splashNav();
  }

  Future<void> splashNav() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString('used') == 'true') {
      log('used');
      // log(context.read<UserProvider>().user.toJson().toString());

      if (context.read<UserProvider>().user.token!.isNotEmpty &&
          context.read<UserProvider>().user.type == 'admin') {
        Future.delayed(const Duration(seconds: 3)).then((value) => {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteGenerator.menuScreen, (route) => false)
            });
      } else {
        Future.delayed(const Duration(seconds: 3)).then((value) => {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteGenerator.splashScreenSc, (route) => false)
            });
      }
    } else {
      log('false');
      Future.delayed(const Duration(seconds: 3)).then((value) => {
            Navigator.pushNamedAndRemoveUntil(
                context, RouteGenerator.onboardingScreen, (route) => false)
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child:
                Image.asset('assets/images/introduce1.jpg', fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const Center(
              child: Text(
            'My Life My Style',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 18,
            ),
          )),
        ],
      ),
    );
  }
}
