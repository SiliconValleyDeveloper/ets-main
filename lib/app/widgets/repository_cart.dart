import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../themes/color.dart';
import '../utils/constant.dart';
import 'dart:math' as math;

import '../utils/custom_theme.dart';

class RepositoryCart extends StatelessWidget {
  final String? imageUrl, username;
  final String title, star, desc , subTitle, issueTitle, lstUpdate, createdDate;
  
  const RepositoryCart({
    Key? key, 
    this.imageUrl = PROFILE_URL, 
    this.username = USERNAME, 
    required this.title,

    required this.star, 
  required this.desc, required this.subTitle, required this.issueTitle, required this.lstUpdate, required this.createdDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Get.isDarkMode
                ? Color(0xFF2EA5FF).withOpacity(0.1)
                : Colors.black.withOpacity(0.1),
            spreadRadius: 0.0,
            blurRadius: 6.0,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: defaultPadding / 2,),
              Text(username!, style: subHeadingStyle.copyWith(fontWeight: FontWeight.normal,)),
              Spacer(),
              Text(lstUpdate, style: paragraphStyle),


            ],
          ),
          SizedBox(height: defaultPadding / 2,),
          Text(title, style: titleStyle),
          SizedBox(height: defaultPadding / 2,),
          Text(subTitle, style: subTitleStyle),
          SizedBox(height: defaultPadding / 2,),
          Text(desc, style: paragraphStyle.copyWith(color: Colors.grey.withOpacity(0.6))),
          SizedBox(height: defaultPadding * 3,),
         Padding(
           padding: const EdgeInsets.all( 3),
           child: Row(
             children: [
               Text('# ', style: titleStyleBold.copyWith(color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0), fontSize: 18.0 ),),
               Text(
                 '${issueTitle}',
                 style: paragraphStyle.copyWith( fontWeight: FontWeight.normal),
               ),
             ],
           ),
         )
        ],
      ),
    );
  }
}