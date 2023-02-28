import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:kirala/presentation/widgets/extra_income_question_row.dart';

class IncomeStatusColumn extends StatelessWidget {
  const IncomeStatusColumn({
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
              data: AppStrings.incomeStatusTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),

        //* Extra Income Question Row
        const ExtraIncomeQuestionRow(),
      ],
    );
  }
}
