import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.stockcake.com/public/5/5/3/5538dbcf-9b6f-45f0-9e2c-210f897ff0d6_medium/curious-raccoon-peeking-stockcake.jpg'),
          ),
        ),
        title: Text('Sheeb 🦝'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

//ChatView
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 101,
              itemBuilder: (context, index) {
                return const MyMessageBubble();
              },
            )),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}
