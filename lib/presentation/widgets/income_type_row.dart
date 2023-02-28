import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:sizer/sizer.dart';

class IncomeTypeRow extends StatelessWidget {
  const IncomeTypeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p10, horizontal: AppPadding.p20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p10),
            child: Image.asset(ImageManager.plus),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.sp),
            child: CustomTextWidget(
              data: AppStrings.addIncomeTitle,
              style: TextStyle(color: ColorManager.primary),
            ),
          )
        ],
      ),
    );
  }
}
