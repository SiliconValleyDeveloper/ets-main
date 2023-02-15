import 'package:ets/app/utils/theme_services.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../../data/account_page_json.dart';
import '../../../data/home_json.dart';
import '../../../themes/color.dart';
import '../../../utils/constant.dart';
import '../../../utils/custom_theme.dart';
import '../../../widgets/button_border.dart';
import '../../../widgets/button_list_tile.dart';
import '../../../widgets/circle_icon.dart';
import '../../../widgets/icon_title_section.dart';
import '../../../widgets/repository_cart.dart';
import '../../../widgets/title_section.dart';
import '../controllers/account_controller.dart';

class AccountPage extends GetView<AccountController> {
   AccountPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AccountController());
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: getAppBar(context),
      body: getBody(size, context),
    );
  }

  AppBar getAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share, color:  Get.isDarkMode ? Colors.white.withOpacity(1) :  Colors.black.withOpacity(1),),
        ),
        IconButton(
          onPressed: () {
            ThemeService().switchTheme();

          },
          icon: Icon(Get.isDarkMode ?  LineIcons.moon : LineIcons.sun, color: Get.isDarkMode ? Colors.white.withOpacity(1) :  Colors.black.withOpacity(1) ,),
        ),
      ],
    );
  }

  Widget getBody(Size size, BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width,
          padding: EdgeInsets.only(
              top: defaultPadding,
              left: defaultPadding,
              right: defaultPadding,
              bottom: defaultPadding * 2
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(PROFILE_URL),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: defaultPadding,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(NAME,
                                style: titleStyle.copyWith(fontSize: 20)),
                            SizedBox(width: defaultPadding / 2,),
                            Icon(
                              Icons.verified, color: Colors.blueAccent,),


                          ],
                        ),
                        Row(
                          children: [
                            // Text(USERNAME,
                            //     style: subTitleStyle.copyWith(color: Colors.grey.shade900)),
                            // SizedBox(width: 20,),
                            Row(
                              children: [
                                Icon(Icons.circle, size:12,
                                    color: Colors.green),
                                SizedBox(width: 5,),
                                Text("Active",
                                    style: subTitleStyleBold),

                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding,),
              Row(
                children: [
                  Icon(LineIcons.building, color: Get.isDarkMode ? Colors.white.withOpacity(1) :  Colors.black.withOpacity(1),),
                  SizedBox(width: defaultPadding / 2,),
                  Text(DEPT, style: titleStyle.copyWith(
                      fontWeight: FontWeight.normal)),
                ],
              ),
              SizedBox(height: defaultPadding,),
              Row(
                children: [
                  Icon(LineIcons.mapMarker, color: Get.isDarkMode ? Colors.white.withOpacity(1) :  Colors.black.withOpacity(1),),
                  SizedBox(width: defaultPadding / 2,),
                  Text(LOCATION, style: titleStyle.copyWith(
                      fontWeight: FontWeight.normal)),
                ],
              ),

            ],
          ),
        ),

        Expanded(
            child: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                       color: context.theme.canvasColor.withOpacity(0.8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Row(
                              children: [

                                IconTitleSection(
                                  icon: Icon(
                                    LineIcons.calendarCheck, color: Get.isDarkMode ? Colors.white.withOpacity(1) :  Colors.black.withOpacity(1),),
                                  title: "Ticket",
                                  textStyle: titleStyleBold,
                                ),
                                Spacer(),

                                 Icon(LineIcons.arrowRight)
                              ],
                            ),
                          ),
                          SizedBox(height: defaultPadding,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  tickets.length, (index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: index == 0
                                          ? defaultPadding
                                          : defaultPadding,
                                      right: index == (tickets.length - 1)
                                          ? defaultPadding
                                          : 0
                                  ),
                                  child: RepositoryCart(
                                    title: tickets[index]["title"],
                                    star: tickets[index]["star"],
                                    desc: tickets[index]["description"],
                                    subTitle: tickets[index]["subtitle"],
                                    issueTitle: tickets[index]["issueTitle"],
                                    lstUpdate: tickets[index]["lastUpdate"],
                                    createdDate: tickets[index]["createdDate"],
                                  ),
                                );
                              }),
                            ),
                          ),


                        ],
                      ),
                    ),

                    SizedBox(height: defaultPadding / 2,),
                    Divider(color: grey, thickness: 0.1,),
                    SizedBox(height: defaultPadding / 2,),
                    Column(
                      children: List.generate(myWorks.length, (index) {
                        return ButtonListTile(
                          onTap: () {

                          },
                          title: myWorks[index]['title'],
                          icon: myWorks[index]['icon'],
                          bgIconColor: myWorks[index]['bgIconColor'],
                          hasTrailing: true,
                          trailing: myWorks[index]['count'],
                        );
                      }),
                    ),
                    SizedBox(height: defaultPadding / 2,),
                    TitleSection(title: 'Shortcuts',),
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: defaultPadding,),
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: List.generate(
                                  shortcuts.length, (index) {
                                return Positioned(
                                    left: index *
                                        (size.width / shortcuts.length) -
                                        (size.width / 2.3),
                                    right: 0,
                                    child: CircleIcon(
                                      icon: shortcuts[index]['icon'],
                                      bgColor: shortcuts[index]['bgColor'],
                                    )
                                );
                              }),
                            ),
                          ),
                          SizedBox(height: defaultPadding,),
                          Text(
                            "The things you need, one tap away",
                            textAlign: TextAlign.center,
                            style: titleStyle.copyWith(
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: defaultPadding,),
                          Text(
                            "Fast access you lists of Issues, Pull Requests, or Discussions",
                            textAlign: TextAlign.center,
                            style: titleStyle.copyWith(
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          SizedBox(height: defaultPadding,),
                          ButtonBorder(
                            onTap: () {},
                            text: "Get Started",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
      ],
    );
  }
}
