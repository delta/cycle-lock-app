import 'package:flutter/material.dart';

void main() => runApp(const AuthPage());

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome to the Auth Page',
      home: Scaffold(
        body: Center(
          child: Text('AUTH PAGE'),
        ),
      ),
    );
  }
}
