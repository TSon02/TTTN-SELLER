import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/widgets/custom_button_widget.dart';

class SplashScreenSecond extends StatefulWidget {
  const SplashScreenSecond({super.key});

  @override
  State<SplashScreenSecond> createState() => _SplashScreenSecondState();
}

class _SplashScreenSecondState extends State<SplashScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child:
                Image.asset('assets/images/introduce0.jpg', fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   bottom: 0,
          //   top: 0,
          //   child: Container(
          //     alignment: Alignment.center,
          //     child: const Column(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Text(
          //           'My Life My Style',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontFamily: "Poppins",
          //             fontSize: 18,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButtonWidget(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  title: 'Login',
                  onClick: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/login-screen',
                      (route) {
                        return false;
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButtonWidget(
                  backgroundColor: Colors.transparent,
                  textColor: Colors.white,
                  title: 'Sign Up',
                  borderColor: Colors.white,
                  onClick: () {},
                ),
                const SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
