import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*安心安全のクラス　”やることを追加できるようにしよう！！” */
class ToDo{
  //Step1　リストを作る
  String text = "";
  bool checked = false;

  ToDo(String text, bool checked)
  {
    this.text = text;
    this.checked = checked;
  }

//Step2　テキストボックスから追加、
changeToDo(String text){
  this.text = text;
}

String getText()
{
  return text;
}
bool getCheck()
{
  return checked;
}
}
