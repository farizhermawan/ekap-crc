import 'package:customer_response_care/screens/home/components/layanan_ui.dart';
import 'package:flutter/material.dart';
import 'package:customer_response_care/screens/register/register_page.dart';
import 'package:customer_response_care/screens/dashboard/dashboard_page.dart';
import 'package:customer_response_care/screens/forgot_password/forgot_password_page.dart';
import 'package:customer_response_care/screens/login/login_page.dart';
import 'package:customer_response_care/screens/splash/splash_screen_page.dart';
import 'package:customer_response_care/screens/bantuan/components/bantuanbarket_ui.dart';
import 'package:customer_response_care/screens/bantuan/components/bantuanlayanan_ui.dart';
import 'package:customer_response_care/screens/bantuan/components/bantuanaplikasi_ui.dart';
import 'package:customer_response_care/screens/home/components/barket_ui.dart';
import 'package:customer_response_care/screens/home/components/aplikasi_ui.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,  
    routes: <String, WidgetBuilder>{
      '/register': (BuildContext context) => new RegisterPage(),
      '/login': (BuildContext context) => new LoginPage(),
      '/forgot': (BuildContext context) => new ForgotPasswordPage(),
      '/dashboard': (BuildContext context) => new DashboardPage(),
      '/bantuanbarket': (BuildContext context) => new BantuanBarketUI(),
      '/bantuanaplikasi': (BuildContext context) => new BantuanAplikasiUI(),
      '/bantuanlayanan': (BuildContext context) => new BantuanLayananUI(),
      '/komplainbarket': (BuildContext context) => new KomplainBarketPage(),
      '/komplainlayanan': (BuildContext context) => new KomplainLayananPage(),
      '/komplainaplikasi': (BuildContext context) => new KomplainAplikasiPage(),
    },
    title: 'Splash screen',
    home: SplashScreenPage(),
  ));
}
