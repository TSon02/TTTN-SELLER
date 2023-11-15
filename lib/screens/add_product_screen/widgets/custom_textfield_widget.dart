import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key,
      required this.label,
      required this.textEditingController,
      required this.hintText,
      this.maxLines = 1,
      this.textInputType = TextInputType.text});
  final String label;
  final String hintText;
  final int maxLines;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      keyboardType: textInputType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        label: Text(label),
        alignLabelWithHint: true,
        hintText: hintText,
      ),
      controller: textEditingController,
    );
  }
}
