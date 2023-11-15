import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/widgets/auth_textfield.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm(
      {super.key,
      required this.usernameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController});

  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  @override
  State<RegisterForm> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthTextField(
            label: 'User Name',
            hint: 'John Doe',
            controller: widget.usernameController),
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
            controller: widget.passwordController),
        AuthTextField(
            label: 'Confirm Password',
            obscureText: true,
            isPassword: true,
            controller: widget.confirmPasswordController),
      ],
    );
  }
}
