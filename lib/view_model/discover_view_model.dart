import 'package:get/get.dart';
import 'package:dating_app/constant.dart';
class DiscoverViewModel extends GetxController {

  var images = UserDummyConstant.images;
  RxDouble isDragLeft = 0.0.obs;
  Rx<int> currentIndex = 0.obs;
  void changeIndex(int index){
    if (currentIndex < images.length - 1) {
      currentIndex.value += 1;
    } else {
      currentIndex.value = 0;
    }
  }
  @override
  void onInit() {
    currentIndex.value = (images.length - 1);
    super.onInit();
  }
  void updateRotation(double delta) {
    //rotationAngle = (rotationAngle.value * 0.7).clamp(-1, 1);
  }
  void change(double status){
    isDragLeft.value = status;
    isDragLeft.refresh();
  }
}