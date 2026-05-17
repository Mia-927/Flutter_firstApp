import 'package:flutter/material.dart';
import '../data/chat_data.dart';
import '../data/todo_data.dart';

class AppStorage{
  List<ChatData> chats = [];
  List<ToDoData> todos = [];
}

class Dates{
  static DateTime get now{
    return DateTime.now();
  }
  static String format(DateTime date){
    return  date.toString().split(" ")[0];
  }

  static bool isSameDay(DateTime a, DateTime b){
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}