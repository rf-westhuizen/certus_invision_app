import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../src/app_state.dart';
import 'landing_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    final appState = context.read<AppState>();
    await appState.initializeAuth();

    if (mounted) {
      Navigator.pushReplacementNamed(context, LandingScreen.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}