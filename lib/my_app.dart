import 'package:ayamku_app/home_screen.dart';
import 'package:ayamku_app/login_screen.dart';
import 'package:ayamku_app/otp_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login-screen',
      routes: {
        'login-screen': (context) => const LoginScreen(),
        'otp-screen': (context) => const OTPScreen(),
        'home-screen': (context) => const HomeScreen()
      },
    );
  }
}
