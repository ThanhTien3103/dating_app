import 'package:dating_app/view/widget/button_widget.dart';
import 'package:dating_app/view_model/on_boarding_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/constant.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({required Key key}) : super(key: key);

  Widget buildDot(Color color) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnBoardingViewModel>();

    return Scaffold(
        body: Obx(
      () => Column(
        children: [
          const Spacer(),
          Flexible(
            flex: 4,
            child: PageView.builder(
              itemCount: OnboardingConstant.images.length,
              onPageChanged: (index) {
                if (index < 1) {
                  controller.pageController.jumpToPage(1);
                } else if (index > OnboardingConstant.images.length-2) {
                  controller.pageController.jumpToPage(OnboardingConstant.images.length-2);
                } else {
                  controller.changePage(index);
                }
              },
              controller: controller.pageController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ClipRRect(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Transform.scale(
                        scale: index == controller.currentPage.value ? 1 : 0.8,
                        alignment: FractionalOffset.center,
                        child: Image.asset(
                          OnboardingConstant.images[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ),
                );
              },
            ),
          ),
          Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  controller.titles[controller.currentPage.value - 1],
                  style: OnboardingConstant.titleText,
                ),
              )),
          const SizedBox(height: 10),
          Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  controller.contents[controller.currentPage.value - 1],
                  style: OnboardingConstant.defaultText,
                  textAlign: TextAlign.center,
                ),
              )),
          Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Container(
                            width: 15,
                            height: 15,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            // Add margin between dots
                            child: buildDot(
                                (controller.currentPage.value == index + 1)
                                    ? OnboardingConstant.currentSelectColor
                                    : OnboardingConstant.notCurrentSelectColor),
                          )),
                ),
              )),
          Flexible(
              flex: 1,
              child: ButtonWidget(
                title: 'Start',
                onpress: () {},
              )),
        ],
      ),
    ));
  }
}
