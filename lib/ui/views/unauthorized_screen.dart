import 'package:flutter/material.dart';

class UnauthorizedScreen extends StatelessWidget {
  static const String id = 'unauthorized_screen';

  const UnauthorizedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Access Denied')),
      body: const Center(
        child: Text(
          'You do not have permission to access this page',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}