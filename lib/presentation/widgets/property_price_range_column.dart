import 'package:flutter/material.dart';
import 'package:kirala/core/widgets/first_view_widgets/custom_text_widget.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/resources/value_manager.dart';
import 'package:kirala/presentation/widgets/price_raw.dart';
import 'package:kirala/presentation/widgets/property_range_slider.dart';

class PropertyPriceRangeColumn extends StatelessWidget {
  const PropertyPriceRangeColumn({
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
              data: AppStrings.priceRangeTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
        //* Property Range Slider
        const PropertyRangeSlider(),
        //* Property Price Row
        const PriceRow(),
      ],
    );
  }
}
