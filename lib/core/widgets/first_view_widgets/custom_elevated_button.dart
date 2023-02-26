import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.data,
  });
  final VoidCallback onPressed;
  final String data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          data,
          style: Theme.of(context).textTheme.titleMedium,
        ));
  }
}
