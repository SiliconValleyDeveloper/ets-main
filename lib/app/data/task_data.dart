// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskModel {
  String? taskNumber;
  String? title;
  String? tag;
  String? startDate;
  String? endDate;
  DateTime? datetime;
  int? commentCount;
  Color? tagColor;

  TaskModel(
      {this.taskNumber,
        this.title,
        this.tag,
        this.startDate,
        this.endDate,
        this.datetime,
        this.commentCount,
        this.tagColor});
}

List<TaskModel> taskItems = [
  TaskModel(
      taskNumber: "216",
      title: "Incorrect action message",
      tag: "ux-issue",
      startDate: "June 8",
      endDate: "June 10",
      commentCount: 104,
      tagColor: Colors.purple,
      datetime: DateTime.now()),
  TaskModel(
      taskNumber: "208",
      title: "Return to the old design",
      tag: "customer feedback",
      startDate: "July 20",
      endDate: "July 25",
      commentCount: 0,
      tagColor: Colors.green,
      datetime: DateTime.now().subtract(Duration(days: 30 * 4))),
  TaskModel(
      taskNumber: "196",
      title: "Document adding feature",
      tag: "features",
      startDate: "June 17",
      endDate: "June 20",
      commentCount: 8,
      tagColor: Colors.deepOrangeAccent,
      datetime: DateTime.now().subtract(Duration(days: 10))),
  TaskModel(
      taskNumber: "104",
      title: "Verifying emails",
      tag: "v2.0",
      startDate: "June 17",
      endDate: "June 20",
      commentCount: 21,
      tagColor: Colors.indigo,
      datetime: DateTime.now().subtract(Duration(days: 10))),
  TaskModel(
      taskNumber: "162",
      title: "Flutter document",
      tag: "features",
      startDate: "June 17",
      endDate: "June 20",
      commentCount: 8,
      datetime: DateTime.now().subtract(Duration(days: 2))),
];

class CommentModel {
  String? comment;
  int? like;
  int? heart;
  DateTime? dateTime;

  CommentModel({
    this.comment,
    this.like,
    this.heart,
    this.dateTime,
  });
}

List<CommentModel> commentModelItem = [
  CommentModel(
      comment: 'Add Date Time',
      like: 3,
      heart: 8,
      dateTime: DateTime.now().subtract(Duration(days: 2))),
  CommentModel(
      comment: 'Add Like Feature',
      like: 3,
      heart: 1,
      dateTime: DateTime.now().subtract(Duration(days: 35))),
  CommentModel(
      comment: 'Add Comment Time',
      like: 3,
      heart: 8,
      dateTime: DateTime.now().subtract(Duration(days: 8)))
];
