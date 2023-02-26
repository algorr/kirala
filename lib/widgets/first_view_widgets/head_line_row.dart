import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:sizer/sizer.dart';

class HeadLineRow extends StatelessWidget {
  const HeadLineRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(ImageManager.backArrow),
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Text(
          AppStrings.bottomSheetHeadTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
