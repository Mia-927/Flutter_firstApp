import 'package:flutter/material.dart';

/*安心安全のクラス　”やることを追加できるようにしよう！！” */
class ToDoData{
  //Step1　リストを作る
  final DateTime createdDate;
  final String text;
  bool checked;

  ToDoData({
    required this.createdDate,
    required this.text,
    required this.checked,
  });
}
