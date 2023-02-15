import 'package:flutter/material.dart';
import '../themes/color.dart';
import '../utils/constant.dart';
import '../utils/custom_theme.dart';
class TitleSection extends StatelessWidget {
  final String title;
  final Widget? trailing;
  
  const TitleSection({
    Key? key, 
    required this.title, 
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: titleStyle),
          trailing ?? SizedBox(),
        ],
      ),
    );
  }
}