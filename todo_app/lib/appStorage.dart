import 'package:flutter/material.dart';
import '../data/chat_data.dart';
import '../data/todo_data.dart';

class AppStorage{
  List<ChatData> chats = [];
}

class Dates{//現在時刻
  static DateTime get now{
    return DateTime.now();
  }
  static String format(DateTime date){//表示用
    return  "${date.month}/${date.day} ${date.hour}:00";
  }
  static DateTime hour(DateTime date){//時間丸め<-
    return DateTime(date.year, date.month, date.day, date.hour);
  }
  static bool isSameDay(DateTime a, DateTime b){//日付比較
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}