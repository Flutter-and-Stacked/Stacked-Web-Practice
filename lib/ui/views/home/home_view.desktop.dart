import 'package:first_stacked_app/ui/common/app_colors.dart';
import 'package:first_stacked_app/ui/common/app_constants.dart';
import 'package:first_stacked_app/ui/common/shared_styles.dart';
import 'package:first_stacked_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

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
                      const Text(
                        "Credit to FilledStacks Academy",
                        style: TextStyle(
                          // color: kcLightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Spacer(flex: 2),
                      GradientText(
                        "MASTER\nFLUTTER",
                        style: ktsTitleText,
                        colors: const [Color(0xff0CFF60), Color(0xff0091FB)],
                      ),
                      verticalSpaceTiny,
                      Text(
                        "ON THE WEB",
                        style: ktsTitleText,
                      ),
                      verticalSpaceTiny,
                      Row(
                        children: [
                          Text(
                            "Build amazing software, the right way.",
                            style: ktsBodyLarge.copyWith(
                                fontWeight: FontWeight.w700),
                          ),
                          GradientText("Sign up to be notified: ",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              colors: const [
                                Color(0xff0CFF60),
                                Color(0xff0091FB)
                              ])
                        ],
                      ),
                      verticalSpaceMedium,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: SvgPicture.asset('/sign-up-arrow.svg'),
                      ),
                      verticalSpaceMedium,
                      Row(
                        children: [
                          Container(
                            width: kdDesktopMaxContentWidth * 0.3,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                color: const Color(0xFF232323),
                                borderRadius: BorderRadius.circular(8)),
                            child: const TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: "Your email",
                                hintStyle: TextStyle(color: Color(0xff989898)),
                                filled: true,
                                fillColor: Color(0xFF232323),
                              ),
                            ),
                          ),
                          horizontalSpaceSmall,
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: const Text(
                              "Notify Me",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
                Container(width: 500, color: Colors.amber)
              ],
            ),
          ),
        ));
  }
}
