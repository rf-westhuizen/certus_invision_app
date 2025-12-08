import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../src/app_state.dart';
import 'maintenance_events_screen.dart';

class LandingScreen extends StatefulWidget {
  static const String id = 'landing_screen';
  const LandingScreen({super.key});
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    _controller.text = app.userFilter ?? '';
    return Scaffold(
      appBar: AppBar(title: const Text('Landing')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'User Name filter'),
              onChanged: (v) => context.read<AppState>().userFilter = (v.isEmpty ? null : v),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () => Navigator.pushNamed(context, '/events'),
              child: const Text('Stay'),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () => Navigator.pushNamed(context, MaintenanceEventsScreen.id),
              child: const Text('Maintenance Events Overview'),
            ),
          ],
        ),
      ),
    );
  }
}