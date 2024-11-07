import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('AyamKu'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), hintText: 'username'),
                controller: usernameController),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), hintText: 'password'),
              obscureText: true,
              controller: passwordController,
            ),
            FilledButton(
                onPressed: () {
                  if (usernameController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                  } else
                    Navigator.of(context).pushNamed('otp-screen');
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
