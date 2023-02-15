import 'package:flutter/material.dart';


import '../utils/constant.dart';
import '../utils/custom_theme.dart';

class IconTitleSection extends StatelessWidget {
  final Icon? icon;
  final String? title;
  final Icon? suffixIcon;
  final TextStyle? textStyle;

   IconTitleSection({
    Key? key, 
     this.icon,
      this.suffixIcon,
      this.title, this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon!,
        SizedBox(width: defaultPadding / 2,),
        Text(title!, style: textStyle),

      ],
    );
  }
}