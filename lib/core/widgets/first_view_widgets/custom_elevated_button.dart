import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.data,
    this.style,
  });
  final VoidCallback onPressed;
  final String data;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          data,
          style: style,
        ));
  }
}
