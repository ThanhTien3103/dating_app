import 'package:flutter/cupertino.dart';
import 'package:dating_app/constant.dart';
class ButtonWidget extends StatelessWidget {
  final String title;
  final Function() onPress;
  const ButtonWidget({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: OnboardingConstant.signUpButtonColor
      ),
      child: CupertinoButton(
        onPressed: onPress,
        child: Text(title, style: const TextStyle(color: CupertinoColors.white, fontWeight: FontWeight.bold),),
      ),
    );
  }

}