import 'package:flutter/material.dart';
import '../data/chat_data.dart';
import '../data/todo_data.dart';
import '../data/log_data.dart';

class AppStorage{
  List<ChatData> chats = [];
  List<ToDoData> todos = [];
  Map<String, List<LogData>> logs = {};

  }