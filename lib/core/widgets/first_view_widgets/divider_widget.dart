import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:sizer/sizer.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.sp),
      child: Divider(
        thickness: 1,
        color: ColorManager.dividerColor,
      ),
    );
  }
}
