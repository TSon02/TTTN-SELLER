import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_treasures_seller/route_generator.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/register_screen/cubit/register_cubit.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/register_screen/widgets/register_form.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';
import 'package:trendy_treasures_seller/widgets/custom_button_widget.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static BlocProvider<RegisterCubit> provider() {
    return BlocProvider(
      create: (context) {
        return RegisterCubit();
      },
      child: const RegisterScreen(),
    );
  }

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isChecked = false;
  // bool _isAdmin = false;

//TEXT EDIT CONTROLLERS

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      // listenWhen: (previous, current) {
      //   return true;
      // },
      listener: (context, state) {
        log((state.data!.error == "").toString());
        if (state.data!.error != "") {
          if (state.data!.error.contains('Username') ||
              state.data!.error.contains('greater') ||
              state.data!.error.contains('match') ||
              state.data!.error.contains('Confirm') ||
              state.data!.error.contains('Password') ||
              state.data!.error.contains('Email')) {
            UIHelpers.showSnackBar(
                context: context,
                message: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                type: SnackBarType.ERROR);
          } else {
            if (state.data!.error.contains('Success')) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteGenerator.successfullScreen, (route) => false);
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
        }
        log(state.data!.error);
      },
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<RegisterCubit, RegisterState>(
              builder: (context, state) {
            return SingleChildScrollView(
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
                    height: 24,
                  ),
                  const TitleTextWidget(
                    title: 'Sign Up!',
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const SubTitleWidget(
                    subTitle: 'Create an new account for seller',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  RegisterForm(
                    usernameController: _usernameController,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    confirmPasswordController: _confirmPasswordController,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        text: "Have an account?  ",
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      '/login-screen', (route) => false);
                                },
                              text: 'Login',
                              style: TextStyle(
                                  color: Colors.blue[900], fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isChecked = !_isChecked;
                            });
                          },
                          child: const SubTitleWidget(
                              subTitle:
                                  'By creating an account you have to agree with our them & condication'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                      child: CustomButtonWidget(
                    backgroundColor: _isChecked
                        ? Colors.black
                        : Colors.black.withOpacity(0.2),
                    textColor: Colors.white,
                    title: 'Register',
                    onClick: _isChecked
                        ? () async {
                            await context.read<RegisterCubit>().register(
                                  username: _usernameController.text,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                  type: 'admin',
                                  confirmPassword:
                                      _confirmPasswordController.text,
                                  context: context,
                                );
                          }
                        : () {},
                  )),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
