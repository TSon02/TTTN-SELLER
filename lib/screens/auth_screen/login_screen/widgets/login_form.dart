import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/widgets/auth_textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm(
      {super.key,
      required this.emailController,
      required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthTextField(
            label: 'Email',
            hint: 'example@gmail.com',
            controller: widget.emailController),
        const SizedBox(
          height: 12,
        ),
        AuthTextField(
          label: 'Password',
          obscureText: true,
          isPassword: true,
          controller: widget.passwordController,
        ),
      ],
    );
  }
}
