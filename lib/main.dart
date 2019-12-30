import 'package:customer_response_care/bantuan.dart';
import 'package:customer_response_care/home.dart';
import 'package:customer_response_care/komplainbarket_bantuan.dart';
import 'package:flutter/material.dart';
import 'package:customer_response_care/forgotpassword.dart';
import 'package:customer_response_care/login.dart';
import 'package:customer_response_care/register.dart';
import 'package:customer_response_care/splash.dart';
import 'package:customer_response_care/komplainlayanan.dart';
import 'package:customer_response_care/komplainbarket.dart';
import 'package:customer_response_care/komplainaplikasi.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/register': (BuildContext context) => new RegisterPage(),
      '/login': (BuildContext context) => new LoginPage(),
      '/forgot': (BuildContext context) => new ForgotPasswordPage(),
      '/komplain_barket': (BuildContext context) => new KomplainBarketPage(),
      '/komplain_layanan': (BuildContext context) => new KomplainLayananPage(),
      '/komplain_aplikasi': (BuildContext context) => new KomplainAplikasiPage(),
      '/bantuan': (BuildContext context) => new BantuanPage(),
      '/bantuanbarket': (BuildContext context) => new BantuanKomplainBarketPage(),
      '/dashboard': (BuildContext context) => new DashboardPage(),
    },
    title: 'Splash screen',
    home: SplashScreenPage(),
  ));
}
