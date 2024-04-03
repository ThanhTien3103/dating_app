import 'package:flutter/material.dart';
const fontText = "Regular";
class OnboardingConstant {
  static const List<String> images = [
    "assets/images/onbroadingimage2.png",
    "assets/images/onbroadingimage1.png",
    "assets/images/onbroadingimage3.png",
    "assets/images/onbroadingimage2.png",
    "assets/images/onbroadingimage1.png",
  ];
  static const Color titleColor = Color(0xFFe94057);
  static const Color textDefaultColor = Color(0xFF323755);
  static const Color currentSelectColor = Color(0xFFe94057);
  static Color notCurrentSelectColor = const Color(0xFF000000).withOpacity(0.1);
  static const Color signUpButtonColor = Color(0xFFe94057);
  static const TextStyle titleText = TextStyle(color: titleColor,fontSize: 24, fontFamily: fontText, fontWeight: FontWeight.bold);
  static const TextStyle defaultText = TextStyle(color: OnboardingConstant.textDefaultColor, fontSize: 14, fontFamily: fontText, fontWeight: FontWeight.w600);
  static const TextStyle signInTextButtonStyle = TextStyle(color: OnboardingConstant.titleColor, fontWeight: FontWeight.bold);
}