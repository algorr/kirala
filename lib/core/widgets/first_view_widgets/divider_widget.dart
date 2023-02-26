import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/color_manager.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: ColorManager.dividerColor,
    );
  }
}
