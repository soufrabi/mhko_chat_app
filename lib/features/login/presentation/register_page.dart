import 'package:flutter/material.dart';
import 'package:mhko_chat_app/features/login/presentation/my_button.dart';
import 'package:mhko_chat_app/features/login/presentation/my_text_field.dart';

class RegisterPage extends StatelessWidget {
  // email and password controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  RegisterPage({super.key});

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
            // confirm pw text field
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: MyTextField(
                hintText: "Confirm Password",
                controller: _confirmPwController,
                obscureText: true,
              ),
            ),
            // register button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyButton(
                text: "Register",
                onTap: () {},
              ),
            ),
            // login now
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already a member?",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Login now",
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
