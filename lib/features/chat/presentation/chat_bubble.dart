import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          width: message.length > 50
              ? MediaQuery.of(context).size.width * 0.7
              : null,
          padding: const EdgeInsets.all(20.0),
          margin: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 4.0,
          ),
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            message,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
