import 'package:dating_app/view/page/discover_page.dart';
import 'package:dating_app/view_model/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dating_app/constant.dart';

class HomePage extends StatelessWidget {
  var listPage = [
    const DiscoverPage(),
    //Todo: add other page
    const Center(
      child: Text("page1"),
    ),
    const Center(
      child: Text("page2"),
    ),
    const Center(
      child: Text("page3"),
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomePageViewModel>();
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: (controller.currentPage.value == 0)
                        ? NavigatorWidgetConstant.redIconColor
                        : NavigatorWidgetConstant.notSelectColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite,
                      color: (controller.currentPage.value == 1)
                          ? NavigatorWidgetConstant.redIconColor
                          : NavigatorWidgetConstant.notSelectColor),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                    color: (controller.currentPage.value == 2)
                        ? NavigatorWidgetConstant.redIconColor
                        : NavigatorWidgetConstant.notSelectColor,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                    color: (controller.currentPage.value == 3)
                        ? NavigatorWidgetConstant.redIconColor
                        : NavigatorWidgetConstant.notSelectColor,
                  ),
                  label: ''),
            ],
            currentIndex: controller.currentPage.value,
            onTap: controller.changePage,
          ),
          body: listPage[controller.currentPage.value],
        ));
  }
}
