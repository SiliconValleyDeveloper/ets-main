import 'package:ets/app/modules/task/views/task_details.dart';
import 'package:ets/app/themes/color.dart';
import 'package:ets/app/utils/custom_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../../data/task_data.dart';
import '../controllers/task_controller.dart';
import 'package:timeago/timeago.dart' as timeago;


class TaskView extends GetView<TaskController> {
   TaskView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.put(TaskController());

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: context.theme.backgroundColor,
        centerTitle: true,
        title: Text(
          "My Tasks",
          style: titleStyleBold,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined))
        ],
        bottom: TabBar(
          controller: controller.tabController,
          indicatorColor:  Get.isDarkMode ? Colors.white : Colors.black,
          indicatorWeight: 1,
          tabs: [
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    decoration: BoxDecoration(
                        color: context.theme.highlightColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text("3", style: subTitleStyleBold),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "New",
                    style: subTitleStyleBold,
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    decoration: BoxDecoration(
                        color: context.theme.highlightColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text("16", style: subTitleStyle,),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "In Progress",
                    style: subTitleStyleBold,
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    decoration: BoxDecoration(
                        color: context.theme.highlightColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        "0",
                        style: subTitleStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "On Review",
                    style: subTitleStyleBold
                  ),
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32,
                    decoration: BoxDecoration(
                        color: context.theme.highlightColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        "256",
                        style: subTitleStyleBold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Finished",
                    style: subTitleStyleBold
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: InkWell(
                  onTap: () {
                    Get.to(TaskDetails(
                      task: taskItems[index],
                    ));

                  },
                  child: PhysicalModel(
                    color: context.theme.cardColor,
                    elevation: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.theme.cardColor,
                      ),
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 12, bottom: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Task #${taskItems[index].taskNumber}",
                                style: subTitleStyleBold.copyWith( color: Colors.grey,
                                    fontWeight: FontWeight.bold)
                              ),
                              Spacer(),
                              Text(
                                timeago.format(taskItems[index].datetime!),
                                style:subTitleStyleBold.copyWith( color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              "${taskItems[index].title}",
                              style: titleStyle.copyWith(
                                  fontWeight: FontWeight.bold,   fontSize: 20,)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: taskItems[index].tagColor,
                              ),
                              child: Text(
                                "${taskItems[index].tag}",
                                style: paragraphStyle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              children: [
                                Icon(LineIcons.calendarCheck, color: Get.isDarkMode ? Colors.white : Colors.black,),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                    "${taskItems[index]
                                        .startDate} - ${taskItems[index]
                                        .endDate}", style: subTitleStyle,),
                                Spacer(),
                                Text("${taskItems[index].commentCount}", style: subTitleStyle),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(LineIcons.comments)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: taskItems.length,
          ),
          // Container(child: Center(child: Text("1"),),),

          Container(
            child: Center(
              child: Text("2"),
            ),
          ),
          Container(
            child: Center(
              child: Text("3"),
            ),
          ),

          Container(
            child: Center(
              child: Text("4"),
            ),
          ),

        ],
      ),
    );
  }
}