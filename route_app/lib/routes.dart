import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'layout/screens/confirmLogin.dart';
import 'layout/screens/login.dart';
import 'layout/screens/register.dart';
import 'layout/screens/welcome.dart';

/// routes for the application
Map<String, Widget Function(BuildContext)> routes =
    <String, Widget Function(BuildContext)>{
  // When navigating to "/" route, build the WelcomeScreen widget
  '/': (_) => WelcomeScreen(),
  // When navigating to "/login" route, build the LoginScreen widget
  '/login': (_) => LoginScreen(),
  // When navigating to 'login/confirm', build the ConfirmLoginScreen widget
  '/login/confirm': (_) => ConfirmLoginScreen(),
  // When navigating to "/register" route, build the RegisterScreen widget
  '/register': (_) => RegisterScreen(),
};
