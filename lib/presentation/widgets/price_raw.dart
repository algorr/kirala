import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:kirala/viewmodel/cubit/introduce_cubit.dart';
import 'package:sizer/sizer.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroduceCubit, IntroduceState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: AppPadding.p20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                        data: AppStrings.lowestPrice,
                        style: Theme.of(context).textTheme.bodySmall),
                    SizedBox(height: 1.h),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            hintText:
                                context.read<IntroduceCubit>().firstPrice ??
                                    '1500'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: AppPadding.p130),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTextWidget(
                        data: AppStrings.highestPrice,
                        style: Theme.of(context).textTheme.bodySmall),
                    SizedBox(height: 1.h),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            hintText:
                                context.read<IntroduceCubit>().secondPrice ??
                                    '4500'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
