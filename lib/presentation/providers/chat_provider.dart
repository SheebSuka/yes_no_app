import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hello', fromWho: FromWho.me),
    Message(text: 'Ya tomaste café?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //TODO: Implementar metodo
  }
}
