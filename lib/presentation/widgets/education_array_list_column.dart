import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kirala/core/widgets/education_view_widgets/education_title.dart';
import 'package:kirala/core/widgets/first_view_widgets/divider_widget.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/viewmodel/cubit/introduce_cubit.dart';

class EducationArrayListColumn extends StatelessWidget {
  const EducationArrayListColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroduceCubit, IntroduceState>(
      builder: (context, state) {
        return Column(
          children: [
            EducationTitle(
              title: AppStrings.doctorateTitle,
              onPressed: () {
                context.read<IntroduceCubit>().educationSelection();

                context.read<IntroduceCubit>().educationTitle =
                    AppStrings.doctorateTitle;

                Navigator.pop(context);
              },
            ),
            const DividerWidget(),
            EducationTitle(
              title: AppStrings.primarySchoolTitle,
              onPressed: () {
                context.read<IntroduceCubit>().educationSelection();

                context.read<IntroduceCubit>().educationTitle =
                    AppStrings.primarySchoolTitle;

                Navigator.pop(context);
              },
            ),
            const DividerWidget(),
            EducationTitle(
              title: AppStrings.highSchoolTitle,
              onPressed: () {
                context.read<IntroduceCubit>().educationSelection();

                context.read<IntroduceCubit>().educationTitle =
                    AppStrings.highSchoolTitle;

                Navigator.pop(context);
              },
            ),
            const DividerWidget(),
            EducationTitle(
              title: AppStrings.universityTitle,
              onPressed: () {
                context.read<IntroduceCubit>().educationSelection();

                context.read<IntroduceCubit>().educationTitle =
                    AppStrings.universityTitle;

                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
