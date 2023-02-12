import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const LoginAPP());
}

class LoginAPP extends StatelessWidget {
  const LoginAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
        home: Login(),
    );
  }
}

