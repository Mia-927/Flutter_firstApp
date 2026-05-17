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

  ChatData({
    required this.createdDate,
    required this.title,
    required this.messages,
  });
}