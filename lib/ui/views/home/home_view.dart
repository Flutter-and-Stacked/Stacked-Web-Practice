import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'home_view.desktop.dart';
import 'home_view.mobile.dart';
import 'home_viewmodel.dart';
import 'home_view.form.dart';

@FormView(fields: [FormTextField(name: 'email')])
class HomeView extends StackedView<HomeViewModel> with $HomeView {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => HomeViewMobile(controller: emailController),
      // I removed the tablet here so we can prefer the desktop when not in mobile.
      desktop: (_) => HomeViewDesktop(controller: emailController),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    syncFormWithViewModel(viewModel as FormStateHelper);
  }
  // this enables two-way binding, aka this syncs the typed value in the view model with the form data
}
