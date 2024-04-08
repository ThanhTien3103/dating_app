import 'package:flutter/material.dart';
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
  static const TextStyle titleText = TextStyle(color: titleColor,fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle defaultText = TextStyle(color: OnboardingConstant.textDefaultColor, fontSize: 14, fontWeight: FontWeight.normal);
  static const TextStyle signInTextButtonStyle = TextStyle(color: OnboardingConstant.titleColor, fontWeight: FontWeight.bold);
}
class NavigatorWidgetConstant {
  static const Color backgroundColor = Colors.white;
  static const Color borderColor = Color(0xffe8e6ea);
  static const Color redIconColor = Color(0xFFe94057);
  static const Color orangeIconColor = Color(0xfff27121);
  static const Color purpleIconColor = Color(0xff8a2387);
}
class UserDummyConstant {
  static const List<String> images = [
    "assets/images/photo.png",
    "assets/images/photo-2.png",
    "assets/images/photo-3.png",
    "assets/images/photo-4.png",
    "assets/images/photo-5.png",
    "assets/images/photo-6.png",
    "assets/images/photo-7.png",
    "assets/images/photo-8.png",
    "assets/images/photo-9.png",
    "assets/images/photo-10.png",
    "assets/images/photo-11.png",
  ];
}