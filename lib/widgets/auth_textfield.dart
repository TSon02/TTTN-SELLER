import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField(
      {super.key,
      required this.label,
      this.hint,
      this.obscureText = false,
      this.isPassword = false,
      required this.controller});
  final String label;
  final String? hint;
  final bool obscureText;
  final bool isPassword;
  final TextEditingController controller;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
          // border: UnderlineInputBorder(),
          labelText: widget.label,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          hintText: widget.hint,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: _isShowPassword
                      ? const Icon(Icons.remove_red_eye)
                      : const Icon(Icons.remove_red_eye_outlined),
                  onPressed: () {
                    setState(() {
                      _isShowPassword = !_isShowPassword;
                    });
                  },
                )
              : null),
      obscureText: widget.obscureText
          ? _isShowPassword
              ? false
              : true
          : widget.obscureText,
    );
  }
}
