import 'package:first_stacked_app/ui/common/shared_styles.dart';
import 'package:first_stacked_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
//the responsive builder package allows use of the getValueForScreenType function to let us build responsive designs on the widget level which is neat
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: getValueForScreenType(
        context: context,
        mobile: CrossAxisAlignment.center,
        desktop: CrossAxisAlignment.start,
      ),
      children: [
        GradientText(
          "LET'S\nLEARN",
          style: ktsTitleText.copyWith(
              fontSize: getValueForScreenType(
                  context: context, mobile: 60, desktop: 80)),
          colors: const [Color(0xff0CFF60), Color(0xff0091FB)],
        ),
        verticalSpaceTiny,
        Text(
          "FLUTTER",
          style: ktsTitleText.copyWith(
              fontSize: getValueForScreenType(
                  context: context, mobile: 80, desktop: 100)),
        ),
      ],
    );
  }
}
