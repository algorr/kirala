import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_elevated_button.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:kirala/viewmodel/cubit/introduce_cubit.dart';
import 'package:sizer/sizer.dart';

class ExtraIncomeQuestionRow extends StatelessWidget {
  const ExtraIncomeQuestionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroduceCubit, IntroduceState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppMargin.m20),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: CustomElevatedButton(
                      onPressed: () {
                        context
                            .read<IntroduceCubit>()
                            .positiveIncomeSelection();
                      },
                      data: AppStrings.incomeYesTitle,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: CustomElevatedButton(
                      onPressed: () {
                        context
                            .read<IntroduceCubit>()
                            .negativeIncomeSelection();
                      },
                      data: AppStrings.incomeNoTitle,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
