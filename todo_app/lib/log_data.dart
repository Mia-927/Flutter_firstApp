import 'package:flutter/material.dart';

class LogData{
  final String title;
  final String content;
  final String type;
  //final String DateTeime date;
  Map<String, List<LogData>> allLogs = {};

  LogData({
    required this.title,
    required this.content,
    required this.type,
    //required this.date,
  });
}