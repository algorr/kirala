import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_elevated_button.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/core/widgets/first_view_widgets/divider_widget.dart';
import 'package:kirala/core/widgets/first_view_widgets/head_line_row.dart';
import 'package:kirala/presentation/widgets/current_rental_amount_column.dart';
import 'package:kirala/presentation/widgets/education_array_list_column.dart';
import 'package:kirala/presentation/widgets/gender_selection_column.dart';
import 'package:kirala/presentation/widgets/income_status_column.dart';
import 'package:kirala/presentation/widgets/income_type_column.dart';
import 'package:kirala/presentation/widgets/income_type_row.dart';
import 'package:kirala/presentation/widgets/net_salary_column.dart';
import 'package:kirala/presentation/widgets/profile_picture_title.dart';
import 'package:kirala/presentation/widgets/property_price_range_column.dart';
import 'package:kirala/presentation/widgets/save_all_button.dart';
import 'package:kirala/presentation/widgets/tell_about_yourself_column.dart';
import 'package:kirala/viewmodel/cubit/introduce_cubit.dart';
import 'package:sizer/sizer.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.mainViewAppBarTitle,
        ),
      ),
      body: Center(
        child: CustomElevatedButton(
          onPressed: () {
            _introduceYourselfMethod(context);
          },
          data: AppStrings.introduceYourselfButtonTitle,
        ),
      ),
    );
  }

  Future<dynamic> _introduceYourselfMethod(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .95,
          child: BlocBuilder<IntroduceCubit, IntroduceState>(
            builder: (context, state) {
              return ListView(
                children: [
                  //* Headline
                  Padding(
                    padding: EdgeInsets.only(
                        left: AppPadding.p16.sp,
                        right: AppPadding.p16.sp,
                        top: AppPadding.p10.sp),
                    child: const HeadLineRow(),
                  ),

                  //* Divider
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: AppPadding.p16.sp),
                    child: const DividerWidget(),
                  ),

                  //* Profile Picture
                  Row(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppPadding.p16.sp,
                                vertical: AppPadding.p5.sp),
                            child: Container(
                              padding: EdgeInsets.only(left: AppPadding.p16.sp),
                              height: AppSize.s16.h,
                              width: AppSize.s30.w,
                              decoration: BoxDecoration(
                                  color: context
                                              .read<IntroduceCubit>()
                                              .imagePath ==
                                          null
                                      ? ColorManager.grey
                                      : ColorManager.primaryWithOpacity2,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),

                          //* Delete button
                          context.read<IntroduceCubit>().imagePath != null
                              ? Padding(
                                  padding: EdgeInsets.only(
                                      left: AppPadding.p84.sp,
                                      top: AppPadding.p2.h),
                                  child: Container(
                                    width: 22.sp,
                                    height: 22.sp,
                                    decoration: BoxDecoration(
                                        color: ColorManager.grey,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: IconButton(
                                        onPressed: () {
                                          context
                                              .read<IntroduceCubit>()
                                              .deleteProfilePicture();
                                        },
                                        icon: Image.asset(ImageManager.delete)),
                                  ),
                                )
                              : const SizedBox.shrink(),
                          Padding(
                            padding: EdgeInsets.only(
                                left: AppPadding.p32.sp, top: AppPadding.p4.h),
                            child: context.read<IntroduceCubit>().imagePath ==
                                    null
                                ? CircleAvatar(
                                    backgroundColor: Colors.grey.shade500,
                                    radius: AppPadding.p40,
                                    child: Image.asset(ImageManager.emptyUser))
                                : CircleAvatar(
                                    backgroundColor: Colors.grey.shade500,
                                    radius: AppPadding.p40,
                                    backgroundImage: FileImage(context
                                        .read<IntroduceCubit>()
                                        .imagePath!),
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //* Profile Picture Title
                      const ProfilePictureTitle(),

                      //* Advert Title
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: AppPadding.p10,
                            horizontal: AppPadding.p16.sp),
                        child: CustomTextWidget(
                          data: AppStrings.advertTitle,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),

                      //* Add Button
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppPadding.p10,
                              horizontal: AppPadding.p20),
                          child: SizedBox(
                            width:
                                context.read<IntroduceCubit>().imagePath == null
                                    ? 80.sp
                                    : MediaQuery.of(context).size.width * .9,
                            child: CustomElevatedButton(
                              onPressed: () async {
                                context
                                    .read<IntroduceCubit>()
                                    .changeProfilePicture();
                              },
                              data: context.read<IntroduceCubit>().imagePath ==
                                      null
                                  ? AppStrings.addPhotoTitle
                                  : AppStrings.changePhotoTitle,
                            ),
                          ),
                        ),
                      ),

                      //* Gender Selection Column
                      const GenderSelectionColumn(),
                      SizedBox(height: 2.h),
                      //* Pet Selection Column
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: AppPadding.p10,
                                  horizontal: AppPadding.p20),
                              child: CustomTextWidget(
                                data: AppStrings.petSelectionTitle,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppMargin.m20),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      child: CustomElevatedButton(
                                        onPressed: () {
                                          context
                                              .read<IntroduceCubit>()
                                              .petPositiveChoice();
                                        },
                                        data: AppStrings.petYesTitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      child: CustomElevatedButton(
                                        onPressed: () {
                                          context
                                              .read<IntroduceCubit>()
                                              .petNegativeChoice();
                                        },
                                        data: AppStrings.petNoTitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),

                      //* Pet Count Selection Column
                      context.read<IntroduceCubit>().petChoiced == true
                          ? Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: AppPadding.p10,
                                        horizontal: AppPadding.p20),
                                    child: CustomTextWidget(
                                      data: AppStrings.petCountTitle,
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .9,
                                  child: CustomElevatedButton(
                                    onPressed: () {},
                                    data: AppStrings.petCount1,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .9,
                                  child: CustomElevatedButton(
                                    onPressed: () {},
                                    data: AppStrings.petCount2,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .9,
                                  child: CustomElevatedButton(
                                    onPressed: () {},
                                    data: AppStrings.petCount3,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                      SizedBox(height: 2.h),

                      //* Education Status Column
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: AppPadding.p10,
                                  horizontal: AppPadding.p20),
                              child: CustomTextWidget(
                                data: AppStrings.educationSelectionTitle,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .95,
                              child: InkWell(
                                onTap: () {
                                  _educationSelectionMethod(context);
                                },
                                child: DropdownButtonFormField(
                                    hint: CustomTextWidget(
                                      data: context
                                                  .read<IntroduceCubit>()
                                                  .educationTitle ==
                                              null
                                          ? AppStrings.dropDownSelectionTitle
                                          : context
                                              .read<IntroduceCubit>()
                                              .educationTitle!,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder()),
                                    items: const [],
                                    onChanged: (index) {}),
                              ))
                        ],
                      ),
                      SizedBox(height: 2.h),

                      //* Net Salary Column
                      const NetSalaryColumn(),
                      SizedBox(height: 2.h),

                      //* Income Status Column
                      const IncomeStatusColumn(),

                      SizedBox(height: 2.h),

                      //* Income Type Column
                      context.read<IntroduceCubit>().incomeSelected == true
                          ? const IncomeTypeColumn()
                          : const SizedBox.shrink(),

                      SizedBox(height: 1.h),

                      //* Income Type Row
                      context.read<IntroduceCubit>().incomeSelected == true
                          ? const IncomeTypeRow()
                          : const SizedBox.shrink(),

                      SizedBox(height: 2.h),

                      //* Current Rental Amount Column
                      const CurrentRentalAmountColumn(),

                      SizedBox(height: 2.h),

                      //* Price Range Slider Column
                      const PropertyPriceRangeColumn(),

                      SizedBox(height: 2.h),

                      //* Tell About Yourself Column

                      const TellAboutYourselfColumn(),

                      SizedBox(height: 2.h),

                      //* Save Button
                      const SaveAllButton(),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<dynamic> _educationSelectionMethod(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height * .95,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset(ImageManager.backArrow)),
                    ],
                  ),
                  CustomTextWidget(
                    data: context.read<IntroduceCubit>().educationTitle == null
                        ? AppStrings.educationSelectionPageTitle
                        : context.read<IntroduceCubit>().educationTitle!,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 2.sp,
                  ),
                  CustomTextWidget(
                    data: AppStrings.educationSelectionPageSubTitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),

                  //* Education Array List Column
                  const EducationArrayListColumn(),
                ],
              ),
            ));
  }
}
