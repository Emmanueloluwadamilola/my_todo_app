import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String email = '';
  String password = '';
  String confirmPassword = '';

  setEmail(value) {
    email = value;
    notifyListeners();
  }

  setPassword(value) {
    password = value;
    notifyListeners();
  }

  setConfirmPassword(value) {
    confirmPassword = value;
    notifyListeners();
  }
}
