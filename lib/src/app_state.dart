import 'package:flutter/material.dart';

import '../data/models/user_profile.dart';

class AppState extends ChangeNotifier {

  UserProfile? _currentUser;
  String? _userFilter;
  bool _isLoading = true;
  bool _isInitialized = false;

  UserProfile? get currentUser => _currentUser;
  bool get isAuthenticated => _currentUser != null;
  bool get isLoading => _isLoading;
  bool get isInitialized => _isInitialized;
  bool get canEditEngineering => _currentUser?.canEditEngineering ?? false;
  String? get userFilter => _userFilter;

  set userFilter(String? value) {
    if (_userFilter != value) {
      _userFilter = value;
      notifyListeners();
    }
  }

  Future<void> initializeAuth() async {
    if (_isInitialized) return;
    _isLoading = true;
    notifyListeners();

    try {
      // Query the db to get user data
      final userData = UserProfile(
        id: '1010',
        name: 'RF',
        permissions: {
          'admin': false,
          'production': false,
          'engineering': true,
        },
      );

      _currentUser = userData;
    } catch (e, stackTrace) {
      debugPrint('Error initializing auth: $e');
    } finally {
      _isInitialized = true;
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> login(Map<String, dynamic> userData) async {
    _currentUser = UserProfile.fromJson(userData);
    _isLoading = true;
    notifyListeners();
    try {
      // Save user data to secure storage
    } catch (e, stackTrace) {
      debugPrint('Error saving user data: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }


  Future<void> logout() async {
    try {
      // update user data to secure storage
    } catch (e, stackTrace) {
      debugPrint('Error during logout: $e');
    } finally {
      _currentUser = null;
      notifyListeners();
    }
  }


}