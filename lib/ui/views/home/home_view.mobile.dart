import 'package:first_stacked_app/ui/common/academy_icon.dart';
import 'package:first_stacked_app/ui/common/app_colors.dart';
import 'package:first_stacked_app/ui/common/input_field.dart';
import 'package:first_stacked_app/ui/common/ui_helpers.dart';
import 'package:first_stacked_app/ui/widgets/ui_components/home_image.dart';
import 'package:first_stacked_app/ui/widgets/ui_components/home_notify_button.dart';
import 'package:first_stacked_app/ui/widgets/ui_components/home_subtitle.dart';
import 'package:first_stacked_app/ui/widgets/ui_components/home_title.dart';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  final TextEditingController? controller;
  const HomeViewMobile({super.key, this.controller});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        children: [
          const AcademyIcon(),
          verticalSpaceLarge,
          const HomeTitle(),
          verticalSpaceSmall,
          const HomeSubtitle(),
          verticalSpaceLarge,
          InputField(controller: controller),
          verticalSpaceSmall,
          HomeNotifyButton(
            onTap: viewModel.captureEmail,
          ),
          verticalSpaceLarge,
          const HomeImage(),
        ],
      ),
    );
  }
}
