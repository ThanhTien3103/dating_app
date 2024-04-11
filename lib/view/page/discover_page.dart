import 'package:dating_app/view/widget/action_floating_widget.dart';
import 'package:dating_app/view/widget/navigator_button_widget.dart';
import 'package:dating_app/view_model/discover_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dating_app/constant.dart';

import '../../model/user.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<DiscoverViewModel>();
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                NavigatorButtonWidget(
                    icon: const Icon(Icons.navigate_before_outlined),
                    onPress: () {
                      Get.back();
                    })
              ],
            ),
          ),
          leadingWidth: 100,
          title: const Text(
            'Discover\n Chicago, II',
            textAlign: TextAlign.center,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: NavigatorButtonWidget(
                  icon: const Icon(Icons.menu),
                  onPress: () {
                    Get.back();
                  }),
            )
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height - 20,
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Transform.scale(
                      scale: 0.85,
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          UserDummyConstant.images[9],
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ValueListenableBuilder<List<User>>(
                      key: UniqueKey(),
                      valueListenable: controller.discoverList,
                      builder: (BuildContext context, value, Widget? child) {
                        return Stack(
                            children: List.generate(
                              value.length,
                                  (index) => Draggable(
                                feedback: Obx(() => Transform.rotate(
                                  angle: controller.isDragLeft.value,
                                  child: Container(
                                      padding: const EdgeInsets.all(50),
                                      alignment: Alignment.center,
                                      height:
                                      MediaQuery.of(context).size.height * 0.6,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Center(
                                            child: Image.asset(
                                              value[index].image,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 10,
                                            left: 20,
                                            right: 20,
                                            child: Container(
                                                height: 103,
                                                padding: const EdgeInsets.fromLTRB(
                                                    10, 20, 0, 0),
                                                alignment: Alignment.bottomLeft,
                                                color: Colors.black.withOpacity(0.1),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "${value[index].name}, ${value[index].age}",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 24,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                    Text(
                                                      value[index].job,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                      textAlign: TextAlign.left,
                                                    )
                                                  ],
                                                )),
                                          ),
                                          Center(
                                              child: (controller.isDragLeft.value == 0.2)?
                                              const ActionFloatingWidget(icon: Icons.favorite, backgroundColor: Colors.white, iconColor: NavigatorWidgetConstant.redIconColor, size: 41, backgroundSize: 80,)
                                                  :
                                              const ActionFloatingWidget(icon: Icons.clear, backgroundColor: Colors.white, iconColor: NavigatorWidgetConstant.orangeIconColor, size: 30, backgroundSize: 80,)
                                          )
                                        ],
                                      )),
                                ),),
                                axis: Axis.horizontal,
                                childWhenDragging: Container(),
                                child: Container(
                                    padding: const EdgeInsets.all(50),
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height * 0.6,
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            value[index].image,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 20,
                                          right: 20,
                                          child: Container(
                                              height: 103,
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 20, 0, 0),
                                              alignment: Alignment.bottomLeft,
                                              color: Colors.black.withOpacity(0.1),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "${value[index].name}, ${value[index].age}",
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24,
                                                        fontWeight: FontWeight.bold),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    value[index].job,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14),
                                                    textAlign: TextAlign.left,
                                                  )
                                                ],
                                              )),
                                        )
                                      ],
                                    )),
                                onDragEnd: (detail) {
                                  if(controller.isDragLeft.value == 0.2) {
                                    controller.addFavorite();
                                  } else if (controller.isDragLeft.value == -0.2) {
                                    controller.cancelAction();
                                  }
                                  controller.isDragLeft.value = 0;
                                },
                                onDragUpdate: (detail) {
                                  if (detail.delta.dx > 0 &&
                                      controller.isDragLeft.value != 0.2) {
                                    controller.change(0.2);
                                  }
                                  if (detail.delta.dx < 0 &&
                                      controller.isDragLeft.value != -0.2) {
                                    controller.change(-0.2);
                                  }
                                },
                              ),
                            ));
                      },

                    )
                  ),
                ],
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Todo: like, cancel and bookmark action
                    CupertinoButton(child: const ActionFloatingWidget(icon: Icons.clear, backgroundColor: Colors.white, iconColor: NavigatorWidgetConstant.orangeIconColor, size: 30, backgroundSize: 78), onPressed: () {controller.cancelAction();}),
                    CupertinoButton(child: const ActionFloatingWidget(icon: Icons.favorite, backgroundColor: NavigatorWidgetConstant.redIconColor, iconColor: Colors.white, size: 51, backgroundSize: 99), onPressed: () {controller.addFavorite();}),
                    CupertinoButton(child: const ActionFloatingWidget(icon: Icons.star, backgroundColor: Colors.white, iconColor: NavigatorWidgetConstant.purpleIconColor, size: 30, backgroundSize: 78), onPressed: () {})
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
