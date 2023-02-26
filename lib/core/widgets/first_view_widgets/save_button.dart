import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
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
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorManager.inputBorderColor),
            borderRadius: BorderRadius.circular(
              AppSize.s8,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          data,
          style: style,
        ));
  }
}
