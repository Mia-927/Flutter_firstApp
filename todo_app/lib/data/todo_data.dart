import 'package:flutter/material.dart';

/*安心安全のクラス　”やることを追加できるようにしよう！！” */
class ToDoData{
  //Step1　リストを作る
  String date;
  String text;
  bool checked;

  ToDoData({
    required this.date,
    required this.text,
    required this.checked,
  });
}
