import 'package:flutter/cupertino.dart';
import 'package:my_app/message_page.dart';

class ChatMessage {
  String message;
  MessageType type;
  ChatMessage({required this.message, required this.type});
}
