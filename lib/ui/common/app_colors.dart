import 'package:flutter/material.dart';

const Color kcPrimaryColor = Color(0xFF9600FF);
const Color kcPrimaryColorDark = Color(0xFF300151);
const Color kcBlack = Color(0xff0A0A0A);
const Color kcDarkGreyColor = Color(0xFF1A1B1E);
const Color kcMediumGrey = Color(0xFF232323);
const Color kcLightGrey = Color(0xff989898);
const Color kcVeryLightGrey = Color(0xFFE3E3E3);
const Color kcBackgroundColor = kcBlack;

const List<Color> kgTitle = [kcTitleGradientLeft, kcTitleGradientRight];
const Color kcTitleGradientLeft = Color(0xff0CFF60);
const Color kcTitleGradientRight = Color(0xff0091FB);

// The convention used is a k infront, which indicates a constant. In all my code bases I can type k and it’ll pop up all my constants for me. The following letter indicates the constant type. Here’s a few examples.

// kc: Color
// kg: Gradient
// kts: TextStyle
// kd: double

// And others I make up as I need them. This makes up a constant like kcLightGrey which translates to “a constant of type color that is Light Grey”. To get the screenshot looking better there’s a only a few things we need to do.

// The above comments were copied from the tutorial. This is cool! Just like having global styles in a CSS file stored as constants we can have constants for colors ad then call them later on.
