import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';

class ProfilePictureTitle extends StatelessWidget {
  const ProfilePictureTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p10, horizontal: AppPadding.p20),
        child: CustomTextWidget(
          data: AppStrings.profilePhotoTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
