import 'package:ets/app/utils/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import 'package:timeago/timeago.dart' as timeago;

import '../../../data/task_data.dart';

class TaskDetails extends GetView {
  TaskModel? task;
  late CommentModel? commentModel;
   TaskDetails({Key? key,  this.task, this.commentModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: context.theme.backgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: context.theme.backgroundColor,
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.arrow_back_ios , color: Get.isDarkMode ? Colors.white : Colors.black,)),

                            ],
                          )),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Task #${task?.taskNumber}",
                            style: titleStyleBold.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.edit)))),
                    ],
                  ),
                )),
            Expanded(
                flex: 20,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: task?.tagColor,
                              ),
                              child: Text(
                                "${task?.tag}",
                                style: paragraphStyle,
                              ),
                            ),
                          ),
                          Text(
                            timeago.format(task!.datetime!),
                            style: subTitleStyleBold.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "${task?.title}",
                          style: titleStyle.copyWith(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Of course, deeply understanding your users and their needs is the foundation"
                            "of any food product. But that also means understanding all types of users"
                            "and cases",
                        style: titleStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            Icon(LineIcons.calendar),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text("Deadline: ", style: subTitleStyle,),
                            ),
                            Text(
                              "${task?.startDate} - ${task?.endDate}",
                              style: subTitleStyle.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 32,
                      ),
                      Text(
                        "Attachment",
                        style: titleStyleBold.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: context.theme.canvasColor,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Icon(LineIcons.imageAlt),
                            SizedBox(
                              width: 8,
                            ),
                            Text("screenshoot_Image.png"),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: context.theme.canvasColor,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Icon(LineIcons.paperclip),
                            SizedBox(
                              width: 8,
                            ),
                            Text("file_issue.zip"),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 24,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Assigned to", style: subTitleStyleBold,),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 16,
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Reporter",  style: subTitleStyleBold),
                                  SizedBox(
                                    height: 8
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 16,
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 24,
                      ),
                      Text(
                        "Comments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),

                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: commentModelItem.length,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'User Name :)',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  size: 14,
                                                  Icons.thumb_up,
                                                  color: Colors.blue,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(commentModelItem[index]
                                                    .like
                                                    .toString()),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  size: 14,
                                                  Icons.heart_broken,
                                                  color: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(commentModelItem[index]
                                                    .heart
                                                    .toString())
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2, 0, 0, 0),
                                          child: Text(
                                            commentModelItem[index]
                                                .comment
                                                .toString(),
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }))
                    ],
                  ),
                )),
            // Expanded(
            //     child: PhysicalModel(
            //       color: Colors.grey,
            //       elevation: 2,
            //       child: Container(
            //         color: Colors.grey[200],
            //         padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
            //         child: Row(
            //           children: [
            //             Expanded(
            //                 child: TextField(
            //                   controller: _textEditingController,
            //                   decoration: InputDecoration(
            //                       border: InputBorder.none,
            //                       hintText: "Add a comment...",
            //                       hintStyle: TextStyle(color: Colors.black54)),
            //                 )),
            //             IconButton(
            //                 onPressed: () {
            //                   if (_textEditingController.text.length > 0) {
            //                     print(_textEditingController.text);
            //                   }
            //                 },
            //                 icon: Icon(Icons.send)),
            //           ],
            //         ),
            //       ),
            //     ),
            //     flex: 2),
          ],
        ),
      ),
    );
  }
}
