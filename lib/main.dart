import 'package:first_stacked_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:first_stacked_app/app/app.bottomsheets.dart';
import 'package:first_stacked_app/app/app.dialogs.dart';
import 'package:first_stacked_app/app/app.locator.dart';
import 'package:first_stacked_app/app/app.router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:first_stacked_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setPathUrlStrategy();
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      preferDesktop:
          true, //with this here, whenever we are not in mobile it will be the desktop view
      builder: (context) => MaterialApp.router(
        routerDelegate: stackedRouter.delegate(),
        routeInformationParser: stackedRouter.defaultRouteParser(),
        theme: Theme.of(context).copyWith(
            // here we are making a copy of the existing theme with these colors as the defaults:
            primaryColor: kcBackgroundColor,
            focusColor: kcPrimaryColor,
            // setting the default font
            textTheme: GoogleFonts.openSansTextTheme().apply(
              bodyColor: Colors.white, //setting the default text color to white
            )),
      ),
    ).animate().fadeIn(
          delay: const Duration(milliseconds: 50),
          duration: const Duration(milliseconds: 400),
        );
  }
}
