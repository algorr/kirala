import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      textAlignVertical: TextAlignVertical.top,
      maxLines: null,
      maxLength: 300,
      expands: true,
      decoration: InputDecoration(
          hintMaxLines: 10,
          isDense: true,
          contentPadding: EdgeInsets.zero,
          hintText: text,
          border: InputBorder.none),
    );
  }
}
