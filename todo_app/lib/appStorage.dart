import 'package:flutter/material.dart';
import '../data/chat_data.dart';
import '../data/todo_data.dart';

class AppStorage{
  List<ChatData> chats = [];
  List<ToDoData> todos = [];
}

class Date{
  static String get today{
    return  DateTime.now().toString().split(" ")[0];
  }
}