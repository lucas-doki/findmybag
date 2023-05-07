// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class ChatBotScreen extends StatelessWidget {
  static const id = 'chat_bot_screen.dart';
  ChatBotScreen({super.key});

  List<Message> messages = [
    Message('Yah ', false),
    Message('Yah ', false),
    Message('Yah ', true),
    Message('Yah ', false),
    Message('Yah ', false),
    Message('Yah ', true),
    Message('Yah ', false),
    Message('Yah ', true)
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: GroupedListView<Message, DateTime>(
                padding: EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                elements: messages,
                groupBy: (message) => DateTime(2023),
                groupHeaderBuilder: (Message message) => SizedBox(),
                itemBuilder: (context, Message message) => Align(
                  alignment: message.isSentByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(
                    color: message.isSentByMe ? Colors.blue : Colors.white,
                    elevation: 8,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(message.text),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'Type your message here ',
              ),
              onSubmitted: _handleSubmission,
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isSentByMe;

  Message(this.text, this.isSentByMe);
}

void _handleSubmission(text) {
  // final message = Message(
  //   text: text,
  //   isSentByMe: true,
  // );
  // setState(() => messages.add(message));
}
