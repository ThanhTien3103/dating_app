import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class OnBoardingViewModel extends GetxController {
  var currentPage = 1.obs;
  final PageController pageController = PageController(initialPage: 1, viewportFraction: 0.55);
  var contents = [
    'Users going through a vetting process to ensure you never match with bots.',
    'We match you with people that have a large array of similar interests.',
    'Sign up today and enjoy the first month of premium benefits on us.',
  ];
  var titles = [
    'Algorithm',
    'Matches',
    'Premium',
  ];
  void changePage(int index){
    currentPage.value = index;
  }
}