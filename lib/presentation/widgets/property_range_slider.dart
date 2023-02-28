import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/viewmodel/cubit/introduce_cubit.dart';

class PropertyRangeSlider extends StatelessWidget {
  const PropertyRangeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroduceCubit, IntroduceState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: RangeSlider(
            inactiveColor: ColorManager.grey,
            min: 0,
            max: 100000,
            values: context.read<IntroduceCubit>().values,
            onChanged: (newValue) {
              context.read<IntroduceCubit>().values = newValue;

              context.read<IntroduceCubit>().priceSelection();
            },
          ),
        );
      },
    );
  }
}
