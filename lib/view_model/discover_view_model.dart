import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dating_app/constant.dart';

import '../model/user.dart';
class DiscoverViewModel extends GetxController {

  var images = UserDummyConstant.images;
  RxDouble isDragLeft = 0.0.obs;
  int currentIndex = 0;
  final discoverList = ValueNotifier<List<User>>(UserDummyConstant.dummyUser);
  List<User> favorites = [];
  void changeIndex(){
    if (currentIndex > 0) {
      currentIndex -= 1;
    }
  }
  @override
  void onInit() {
    currentIndex = (images.length - 1);
    super.onInit();
  }
  void addFavorite() {
    var newList = List<User>.from(discoverList.value);
    favorites.add(newList[currentIndex]);
    newList.removeAt(currentIndex);
    changeIndex();
    discoverList.value = newList;
  }

  void cancelAction(){
    var newList = List<User>.from(discoverList.value);
    newList.removeAt(currentIndex);
    changeIndex();
    discoverList.value = newList;
  }
  void change(double status){
    isDragLeft.value = status;
    isDragLeft.refresh();
  }
}