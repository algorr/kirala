import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/save_button.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';

class SaveAllButton extends StatelessWidget {
  const SaveAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .3,
          child: SaveButton(
            onPressed: () {
              Navigator.pop(context);
            },
            data: AppStrings.saveButtonTitle,
            style: TextStyle(
              color: ColorManager.white,
            ),
          ),
        ),
      ),
    );
  }
}
