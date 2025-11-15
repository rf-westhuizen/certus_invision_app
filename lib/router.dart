import 'package:certus_invision_app/ui/views/landing_screen.dart';
import 'package:certus_invision_app/ui/views/maintenance_events_screen.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute({required RouteSettings settings}) {
    switch (settings.name) {
      case '/':
      case '/events':
      case LandingScreen.id:
        return MaterialPageRoute(
            builder: (_) => const LandingScreen(), settings: settings);
      case MaintenanceEventsScreen.id:
        return MaterialPageRoute(
            builder: (_) => const MaintenanceEventsScreen(), settings: settings);
        default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}