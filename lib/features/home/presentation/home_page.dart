import 'package:flutter/material.dart';
import 'package:mhko_chat_app/features/chat/presentation/chat_page.dart';

class HomePage extends StatelessWidget {
  final List<String> userEmails = [
    "ronaldo@example.com",
    "flutter@example.com",
    "fabiano@example.com",
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA4A4A4),
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          },
        ),
      ),
      body: ListView.builder(
          itemCount: userEmails.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEBEBEB),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(userEmails[index]),
                  ],
                ),
              ),
            );
          }),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.message,
                color: Theme.of(context).colorScheme.primary,
                size: 40,
              ),
            ),
            ListTile(
              title: Text(
                "HOME",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              title: Text(
                "SETTINGS",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              title: Text(
                "LOGOUT",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
