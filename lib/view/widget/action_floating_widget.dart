import 'package:flutter/material.dart';

class ActionFloatingWidget extends StatelessWidget {
  const ActionFloatingWidget(
      {super.key,
      required this.icon,
      required this.backgroundColor,
      required this.iconColor,
      required this.size, required this.backgroundSize});

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double backgroundSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: backgroundSize,
      height: backgroundSize,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black.withOpacity(0.04),
          width: 1.0
        )
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: size,
      ),
    );
  }
}
