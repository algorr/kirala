import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:sizer/sizer.dart';

class HeadLineRow extends StatelessWidget {
  const HeadLineRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const ImageIcon(
            AssetImage(ImageManager.backArrow),
          ),
        ),
        SizedBox(
          width: AppPadding.p60.sp,
        ),
        Text(
          AppStrings.bottomSheetHeadTitle,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ],
    );
  }
}
