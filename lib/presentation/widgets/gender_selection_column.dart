import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_elevated_button.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';

class GenderSelectionColumn extends StatelessWidget {
  const GenderSelectionColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p10, horizontal: AppPadding.p20),
            child: CustomTextWidget(
              data: AppStrings.genderSelectionTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: CustomElevatedButton(
            onPressed: () {},
            data: AppStrings.femaleTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: CustomElevatedButton(
            onPressed: () {},
            data: AppStrings.maleTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: CustomElevatedButton(
            onPressed: () {},
            data: AppStrings.otherGenderTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
