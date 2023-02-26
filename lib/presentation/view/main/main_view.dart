import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/save_button.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_elevated_button.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/core/widgets/first_view_widgets/divider_widget.dart';
import 'package:kirala/core/widgets/first_view_widgets/head_line_row.dart';
import 'package:sizer/sizer.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

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
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .95,
                  child: ListView(
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
                                  padding:
                                      EdgeInsets.only(left: AppPadding.p16.sp),
                                  height: AppSize.s15.h,
                                  width: AppSize.s30.w,
                                  decoration: BoxDecoration(
                                      color: ColorManager.grey,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: AppPadding.p32.sp,
                                    top: AppPadding.p4.h),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey.shade500,
                                  radius: AppPadding.p40,
                                  child: Image.asset(ImageManager.emptyUser),
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
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: AppPadding.p10,
                                  horizontal: AppPadding.p20),
                              child: CustomTextWidget(
                                data: AppStrings.profilePhotoTitle,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),

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
                              child: CustomElevatedButton(
                                onPressed: () {},
                                data: AppStrings.addPhotoTitle,
                              ),
                            ),
                          ),

                          //* Gender Selection Column
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p10,
                                      horizontal: AppPadding.p20),
                                  child: CustomTextWidget(
                                    data: AppStrings.genderSelectionTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
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
                          ),
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
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          child: CustomElevatedButton(
                                            onPressed: () {},
                                            data: AppStrings.femaleTitle,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          child: CustomElevatedButton(
                                            onPressed: () {},
                                            data: AppStrings.maleTitle,
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
                          Column(
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
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .9,
                                child: CustomElevatedButton(
                                  onPressed: () {},
                                  data: AppStrings.petCount2,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .9,
                                child: CustomElevatedButton(
                                  onPressed: () {},
                                  data: AppStrings.petCount3,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
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
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * .9,
                                  child: DropdownButtonFormField(
                                      hint: CustomTextWidget(
                                        data: AppStrings.dropDownSelectionTitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                      items: [],
                                      onChanged: (index) {}))
                            ],
                          ),
                          SizedBox(height: 2.h),

                          //* Net Salary Column
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p10,
                                      horizontal: AppPadding.p20),
                                  child: CustomTextWidget(
                                    data: AppStrings.netSalaryTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
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
                          ),
                          SizedBox(height: 2.h),

                          //* Income Status Column
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p10,
                                      horizontal: AppPadding.p20),
                                  child: CustomTextWidget(
                                    data: AppStrings.incomeStatusTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          child: CustomElevatedButton(
                                            onPressed: () {},
                                            data: AppStrings.incomeYesTitle,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          child: CustomElevatedButton(
                                            onPressed: () {},
                                            data: AppStrings.incomeNoTitle,
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

                          //* Income Type Column
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p10,
                                      horizontal: AppPadding.p20),
                                  child: CustomTextWidget(
                                    data: AppStrings.incomeTypeTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * .9,
                                  child: DropdownButtonFormField(
                                      hint: CustomTextWidget(
                                        data: AppStrings.dropDownSelectionTitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                      items: [],
                                      onChanged: (index) {}))
                            ],
                          ),

                          SizedBox(height: 1.h),

                          //* Income Type Row
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppPadding.p10,
                                horizontal: AppPadding.p20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: AppPadding.p10),
                                  child: Image.asset(ImageManager.plus),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5.sp),
                                  child: CustomTextWidget(
                                    data: AppStrings.addIncomeTitle,
                                    style:
                                        TextStyle(color: ColorManager.primary),
                                  ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(height: 2.h),

                          //* Current Rental Amount Column
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p10,
                                      horizontal: AppPadding.p20),
                                  child: CustomTextWidget(
                                    data: AppStrings.currentRentalAmountTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
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
                          ),

                          SizedBox(height: 2.h),

                          //* Price Range Slider Column
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p10,
                                      horizontal: AppPadding.p20),
                                  child: CustomTextWidget(
                                    data: AppStrings.priceRangeTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: RangeSlider(
                                  inactiveColor: ColorManager.grey,
                                  min: 0,
                                  max: 100000,
                                  values: const RangeValues(1500, 4500),
                                  onChanged: (RangeValues newRange) {},
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: AppPadding.p20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomTextWidget(
                                              data: AppStrings.lowestPrice,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
                                          SizedBox(height: 1.h),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            child: const TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              textAlign: TextAlign.end,
                                              decoration: InputDecoration(
                                                  hintText: '  1500'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: AppPadding.p130),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomTextWidget(
                                              data: AppStrings.highestPrice,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
                                          SizedBox(height: 1.h),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .3,
                                            child: const TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              textAlign: TextAlign.end,
                                              decoration: InputDecoration(
                                                  hintText: '  4500'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 2.h),

                          //* Tell About Yourself Column

                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p10,
                                      horizontal: AppPadding.p20),
                                  child: CustomTextWidget(
                                    data: AppStrings.tellAboutYourselfTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height: AppSize.s150,
                                  child: const TextField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    maxLength: 300,
                                    expands: true,
                                    decoration: InputDecoration(
                                        hintText: '  4500',
                                        border: InputBorder.none),
                                  ))
                            ],
                          ),

                          SizedBox(height: 2.h),

                          //* Tell About Yourself Column
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p20),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .3,
                                child: SaveButton(
                                  onPressed: () {},
                                  data: AppStrings.saveButtonTitle,
                                  style: TextStyle(
                                    color: ColorManager.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          data: AppStrings.expressYourselfButtonTitle,
        ),
      ),
    );
  }
}
