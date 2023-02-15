import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  //TODO: Implement AccountController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  List<Widget> buttonList = <Widget>[
    IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.delete_outline)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.archive_outlined)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
    IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
  ].obs;
  List<Text> labelList = const <Text>[
    Text('Share'),
    Text('Add to'),
    Text('Trash'),
    Text('Archive'),
    Text('Settings'),
    Text('Favorite')
  ].obs;

  // buttonList = List.generate(
  // buttonList.length,
  // (index) => Padding(
  // padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
  // child: Column(
  // mainAxisAlignment: MainAxisAlignment.start,
  // children: [
  // buttonList[index],
  // labelList[index],
  // ],
  // ),
  // ));
}
