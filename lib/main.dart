import 'package:flutter/material.dart';
import 'package:mhko_chat_app/core/theme.dart';
import 'package:mhko_chat_app/features/login/presentation/login_page.dart';
import 'package:mhko_chat_app/features/login/presentation/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: lightMode,
      home: LoginPage(),
      routes: {
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
      },
    );
  }
}
