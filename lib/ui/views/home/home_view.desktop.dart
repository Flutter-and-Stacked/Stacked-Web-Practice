import 'package:first_stacked_app/ui/common/app_colors.dart';
import 'package:first_stacked_app/ui/common/app_constants.dart';
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
        backgroundColor: Colors.black45,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Credit to FilledStacks Academy",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(flex: 2),
                GradientText(
                  "MASTER\nFLUTTER",
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w800,
                    height: 0.85,
                  ),
                  colors: const [Color(0xff0CFF60), Color(0xff0091FB)],
                ),
                verticalSpaceTiny,
                const Text(
                  "ON THE WEB",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w800,
                    height: 0.85,
                    color: Colors.blue,
                  ),
                ),
                verticalSpaceTiny,
                Row(
                  children: [
                    const Text(
                      "Build amazing software, the right way.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                    GradientText("Sign up to be notified: ",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        colors: const [Color(0xff0CFF60), Color(0xff0091FB)])
                  ],
                ),
                verticalSpaceMedium,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SvgPicture.asset('assets/sign-up-arrow.svg'),
                ),
                verticalSpaceMedium,
                Row(
                  children: [
                    Container(
                      width: kdDesktopMaxContentWidth * 0.3,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 104, 162, 249),
                          borderRadius: BorderRadius.circular(8)),
                      child: const TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: "Your email",
                          hintStyle: TextStyle(color: Colors.amber),
                          filled: true,
                          fillColor: Color(0xFF232323),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(width: 500, color: Colors.amber)
          ],
        ));
  }
}
