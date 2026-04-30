import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*安心安全のクラス　”やることを追加できるようにしよう！！” */
class ToDo{
  //Step1　リストを作る
  List<String> _todoLst = [];

//Step2　テキストボックスから追加、
addToDo(String text){
  _todoLst.add(text);
}
//Step３　編集できるようにする
removeToDo(String text){
  _todoLst.remove(text);
}

changeToDo(String text, int index){
  _todoLst[index] = text;
}

List<String> getToDo()
{
  return _todoLst;
}
}
