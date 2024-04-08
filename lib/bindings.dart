import 'package:dating_app/view_model/discover_view_model.dart';
import 'package:dating_app/view_model/on_boarding_view_model.dart';
import 'package:get/get.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingViewModel());
    Get.put(DiscoverViewModel());
  }
}