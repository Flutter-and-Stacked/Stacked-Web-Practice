import 'package:first_stacked_app/ui/common/app_colors.dart';
import 'package:first_stacked_app/ui/common/shared_styles.dart';
import 'package:first_stacked_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Build amazing software, the right way.",
          style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w700),
        ),
        horizontalSpaceTiny,
        GradientText(
          "Sign up to be notified: ",
          style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
          colors: const [kcTitleGradientRight, kcTitleGradientLeft],
        )
      ],
    );
  }
}
