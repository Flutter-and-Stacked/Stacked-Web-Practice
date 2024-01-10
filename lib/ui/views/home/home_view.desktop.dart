import 'package:first_stacked_app/ui/common/app_colors.dart';
import 'package:first_stacked_app/ui/common/app_constants.dart';
import 'package:first_stacked_app/ui/common/ui_helpers.dart';
import '../../widgets/ui_components/home_image.dart';
import '../../widgets/ui_components/home_notify_button.dart';
import '../../widgets/ui_components/home_subtitle.dart';
import '../../widgets/ui_components/home_title.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_viewmodel.dart';

// my widgets:

import 'package:first_stacked_app/ui/common/academy_icon.dart';
import 'package:first_stacked_app/ui/common/input_field.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  final TextEditingController? controller;
  const HomeViewDesktop({super.key, this.controller});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcDarkGreyColor,
        body: Center(
          child: SizedBox(
            width: kdDesktopMaxContentWidth,
            height: kdDesktopMaxContentHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AcademyIcon(),
                      const Spacer(flex: 2),
                      const HomeTitle(),
                      verticalSpaceTiny,
                      const HomeSubtitle(),
                      verticalSpaceMedium,
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgPicture.asset('/sign-up-arrow.svg'),
                      ),
                      verticalSpaceMedium,
                      Row(
                        children: [
                          InputField(controller: controller),
                          horizontalSpaceSmall,
                          HomeNotifyButton(onTap: viewModel.captureEmail),
                        ],
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
                const HomeImage(),
              ],
            ),
          ),
        ));
  }
}
