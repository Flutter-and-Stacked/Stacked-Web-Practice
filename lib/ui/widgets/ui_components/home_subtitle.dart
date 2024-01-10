import 'package:first_stacked_app/ui/common/app_colors.dart';
import 'package:first_stacked_app/ui/common/shared_styles.dart';
import 'package:first_stacked_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => Column(children: children),
      desktop: (_) => Row(children: children),
    );
  }
}

final children = [
  Text(
    "Test out this functionality.",
    style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w700),
  ),
  horizontalSpaceTiny,
  GradientText(
    "This form is synced with the view model, how cool! ",
    style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
    colors: const [kcTitleGradientRight, kcTitleGradientLeft],
  )
];
