import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../src/app_state.dart';
import 'landing_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Example login with engineering access
                context.read<AppState>().login({
                  "sub": "123",
                  "name": "Engineering User",
                  "admin": false,
                  "production": true,
                  "engineering": true,
                });
                Navigator.pushReplacementNamed(context, LandingScreen.id);
              },
              child: const Text('Login as Engineering User'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example login without engineering access
                context.read<AppState>().login({
                  "sub": "456",
                  "name": "Regular User",
                  "admin": false,
                  "production": true,
                  "engineering": false,
                });
                Navigator.pushReplacementNamed(context, LandingScreen.id);
              },
              child: const Text('Login as Regular User'),
            ),
          ],
        ),
      ),
    );
  }
}