import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('퍼컬진단이 왜 필요한가'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: ListView(
        children: const [
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
