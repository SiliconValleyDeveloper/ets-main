
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/color.dart';
import '../utils/custom_theme.dart';

class ButtonBorder extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final VoidCallback onTap;

  const ButtonBorder({
    Key? key,
    required this.text,
    this.bgColor = bgButton,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: context.theme.cardColor.withOpacity(0.7),
          side: BorderSide(color: white, width: 0.05),
        ),
        child: Text(
          text.toUpperCase(),
          style: subTitleStyle.copyWith(color: primary),
        ),
      ),
    );
  }
}