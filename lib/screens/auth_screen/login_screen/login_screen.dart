import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trendy_treasures_seller/route_generator.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/login_screen/cubit/login_cubit.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/login_screen/widgets/login_form.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';
import 'package:trendy_treasures_seller/widgets/custom_button_widget.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static BlocProvider<LoginCubit> provider() {
    return BlocProvider(
      create: (context) {
        return LoginCubit();
      },
      child: const LoginScreen(),
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TEXT EDIT CONTROLLERS
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.data!.error != "") {
              if (state.data!.error.contains('Email') ||
                  state.data!.error.contains('invalid') ||
                  state.data!.error.contains('empty')) {
                UIHelpers.showSnackBar(
                    context: context,
                    message: state.data!.error.replaceAll(RegExp(r',.*$'), ""));
              } else if (state.data!.error.contains('Success') &&
                  state.data!.response!.user!.type == 'admin') {
                Navigator.pushNamedAndRemoveUntil(
                    context, RouteGenerator.menuScreen, (route) => false);
              } else {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.info,
                  animType: AnimType.rightSlide,
                  title: 'Information',
                  desc: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                  btnOkOnPress: () {},
                ).show();
              }
            }
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ).copyWith(bottom: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logos/Blacklogo.png',
                    width: 120,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                const TitleTextWidget(
                  title: 'Welcome!',
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 6,
                ),
                const SubTitleWidget(
                    subTitle: 'Please login or sign up to continue our app'),
                const SizedBox(
                  height: 24,
                ),
                LoginForm(
                    emailController: _emailController,
                    passwordController: _passwordController),
                const SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account?  ",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    '/register-screen', (route) => false);
                              },
                            text: 'Sign Up',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        CustomButtonWidget(
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          title: 'Login',
                          onClick: () async {
                            await context.read<LoginCubit>().login(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                  context: context,
                                );
                          },
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'or',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        CustomButtonWidget(
                          backgroundColor: Colors.blue[800]!,
                          textColor: Colors.white,
                          title: 'Continue with Facebook',
                          iconData: Icons.facebook,
                          iconColor: Colors.white,
                          onClick: () async {
                            // await context
                            //     .read<LoginCubit>()
                            //     .getUserData(context);
                          },
                        ),
                        const SizedBox(height: 16),
                        CustomButtonWidget(
                          backgroundColor: Colors.white,
                          textColor: Colors.black,
                          title: 'Continue with Google',
                          iconData: FontAwesomeIcons.google,
                          borderColor: Colors.grey,
                          onClick: () async {},
                        ),
                        const SizedBox(height: 16),
                        CustomButtonWidget(
                          backgroundColor: Colors.white,
                          textColor: Colors.black,
                          title: 'Continue with Apple',
                          iconData: Icons.apple,
                          borderColor: Colors.grey,
                          onClick: () {
                            log('login');
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
