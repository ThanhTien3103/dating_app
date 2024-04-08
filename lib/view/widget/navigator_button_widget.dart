import 'package:flutter/cupertino.dart';
import 'package:dating_app/constant.dart';
class NavigatorButtonWidget extends StatelessWidget {
  const NavigatorButtonWidget({super.key, required this.icon, required this.onPress});
  final Icon icon;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 1.0,
              color: NavigatorWidgetConstant.borderColor,
            ),
          ),
          child: CupertinoButton(
            onPressed: onPress,
            child: Icon(
              icon.icon,
              color: NavigatorWidgetConstant.redIconColor,
            )
          ),
        )
    );
  }

}