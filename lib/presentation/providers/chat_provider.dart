import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'hello', fromWho: FromWho.me),
    Message(text: 'Ya tomaste Café', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
  //TODO: Implementar el envio de mensajes
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
  }
}
