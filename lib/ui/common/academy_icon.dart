import 'package:first_stacked_app/ui/common/shared_styles.dart';
import 'package:flutter/material.dart';

class AcademyIcon extends StatelessWidget {
  const AcademyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Thanks to FilledStacks Academy for the help!',
      style: ktsBodyRegular.copyWith(fontWeight: FontWeight.w800),
    );
  }
}
