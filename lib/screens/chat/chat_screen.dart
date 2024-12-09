import 'package:flutter/material.dart';
import 'package:ecommercee/screens/chat/components/body.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chat";
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Body(),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Chat",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
