import 'package:ets/app/utils/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../themes/color.dart';
import '../utils/constant.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final Color bgColor;

  const CircleIcon({ 
    Key? key, 
    required this.icon, 
    required this.bgColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding / 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: context.theme.cardColor, width: 1),
        color: bgColor,
      ),
      child: Icon(icon, size: 20, color: Get.isDarkMode ? Colors.white.withOpacity(1) :  Colors.black.withOpacity(1),),
    );
  }
}