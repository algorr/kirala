import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';

class ExpressYourselfView extends StatelessWidget {
  const ExpressYourselfView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: CustomTextWidget(
              data: 'Express Yourself',
              style: Theme.of(context).textTheme.titleMedium),
        ),
      ),
    );
  }
}
