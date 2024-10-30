import 'package:flutter/material.dart';
import 'package:mhko_chat_app/features/chat/presentation/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) {
                return ChatBubble(
                  message: "Antonio Lucio Vivaldi (4 March 1678 – 28 July 1741) was an Italian composer, virtuoso violinist and impresario of Baroque music.",
                  isCurrentUser: index % 2 == 0,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    autocorrect: false,
                    autofocus: false,
                    minLines: 1,
                    maxLines: 4,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      hintStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Container(
                  // color: Colors.,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
