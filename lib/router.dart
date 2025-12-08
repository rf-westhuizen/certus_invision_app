import 'package:certus_invision_app/src/app_state.dart';
import 'package:certus_invision_app/ui/views/landing_screen.dart';
import 'package:certus_invision_app/ui/views/login_screen.dart';
import 'package:certus_invision_app/ui/views/maintenance_events_screen.dart';
import 'package:certus_invision_app/ui/views/splash_screen.dart';
import 'package:certus_invision_app/ui/views/unauthorized_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Router {
  static Route<dynamic> generateRoute({required RouteSettings settings}) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case LandingScreen.id:
        return MaterialPageRoute(
          builder: (context) => _authGuard(
            context,
            child: const LandingScreen(),
          ),
        );
      case LoginScreen.id:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case MaintenanceEventsScreen.id:
        return MaterialPageRoute(
          builder: (context) => _checkPermission(
            context,
            permission: 'engineering',
            child: const MaintenanceEventsScreen(),
          ),
          settings: settings,
        );
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

  static Widget _authGuard(BuildContext context, {
    required Widget child
  }) {
    final appState = context.watch<AppState>();

    if (!appState.isInitialized) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (!appState.isAuthenticated) {
      return const LoginScreen();
    }

    return child;
  }

  static Widget _checkPermission(BuildContext context, {
        required String permission,
        required Widget child,
      }) {
    final canAccess = context.select<AppState, bool>((state) {
      if (state.isLoading) return false;
      if (permission == 'engineering') {
        return state.canEditEngineering;
      }
      return false;  // Default to false for routes without specific permissions
    });

    if (canAccess) return child;
    return const UnauthorizedScreen();
  }

}