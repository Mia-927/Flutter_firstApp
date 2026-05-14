class ChatText{
  final String text;
  final bool isAI;

  ChatText({required this.text, required this.isAI});
}

class ChatData{
  final String date;
  final String title;
  final List<ChatText> messages;

  ChatData({
    required this.date,
    required this.title,
    required this.messages,
  });
}