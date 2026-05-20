import "todo_data.dart";

class ChatText{
  final DateTime createdDate;
  final String text;
  final bool isAI;

  ChatText({
    required this.createdDate, 
    required this.text, 
    required this.isAI
  });
}

class ChatData{
  final DateTime createdDate;
  final String title;
  final List<ChatText> messages;
  final List<ToDoData> todos;

  ChatData({
    required this.createdDate,
    required this.title,
    required this.messages,
    required this.todos,
  });
}