import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';

class CurrentRentalAmountColumn extends StatelessWidget {
  const CurrentRentalAmountColumn({
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
              data: AppStrings.currentRentalAmountTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: const TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.end,
            decoration: InputDecoration(hintText: '  TL'),
          ),
        )
      ],
    );
  }
}
