import 'package:flutter/material.dart';
import 'package:customer_response_care/screens/register/register_page.dart';
import 'package:customer_response_care/screens/dashboard/dashboard_page.dart';
import 'package:customer_response_care/screens/forgot_password/forgot_password_page.dart';
import 'package:customer_response_care/screens/login/login_page.dart';
import 'package:customer_response_care/screens/splash/splash_screen_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/register': (BuildContext context) => new RegisterPage(),
      '/login': (BuildContext context) => new LoginPage(),
      '/forgot': (BuildContext context) => new ForgotPasswordPage(),
      '/dashboard': (BuildContext context) => new DashboardPage(),
    },
    title: 'Splash screen',
    home: SplashScreenPage(),
  ));
}
