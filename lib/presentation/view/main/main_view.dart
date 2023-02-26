import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:kirala/widgets/first_view_widgets/divider_widget.dart';
import 'package:kirala/widgets/first_view_widgets/head_line_row.dart';
import 'package:sizer/sizer.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.mainViewAppBarTitle),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .95,
                    child: Column(
                      children: [
                        // Headline
                        Padding(
                          padding: EdgeInsets.only(
                              left: AppPadding.p16.sp,
                              right: AppPadding.p16.sp,
                              top: AppPadding.p10.sp),
                          child: const HeadLineRow(),
                        ),

                        // Divider
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppPadding.p8.w),
                          child: const DividerWidget(),
                        ),

                        // Profile Picture
                        Row(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: AppPadding.p16.sp,
                                      vertical: AppPadding.p5.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: AppPadding.p16.sp),
                                    height: AppSize.s15.h,
                                    width: AppSize.s30.w,
                                    decoration: BoxDecoration(
                                        color: ColorManager.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                      ],
                    ),
                  ),
                ),
              );
            },
            child: const Text('Express Yourself')),
      ),
    );
  }
}
