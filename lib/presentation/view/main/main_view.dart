import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/color_manager.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
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
                              left: 16.sp, right: 16.sp, top: 10.sp),
                          child: const HeadLineRow(),
                        ),

                        // Divider
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: const DividerWidget(),
                        ),

                        // Profile Picture
                        Row(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.sp, vertical: 5.sp),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 16.sp),
                                    height: 15.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        color: ColorManager.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 32.sp, top: 4.h),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey.shade500,
                                    radius: 40,
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
