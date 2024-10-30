import 'package:flutter/material.dart';
import 'package:mhko_chat_app/features/login/presentation/my_button.dart';
import 'package:mhko_chat_app/features/login/presentation/my_text_field.dart';

class LoginPage extends StatelessWidget {
  // email and password controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            // welcome back message
            Text(
              "Welcome back, you have been missed!",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // email text field
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: MyTextField(
                hintText: "Email",
                controller: _emailController,
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // pw text field
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: MyTextField(
                hintText: "Password",
                controller: _pwController,
                obscureText: true,
              ),
            ),
            // login button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyButton(
                text: "Login",
                onTap: () {},
              ),
            ),
            // register now
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/register");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
