import 'package:flutter/material.dart';
import 'package:customer_response_care/themes/colors.dart';
import 'package:customer_response_care/screens/forgot_password/components/forgot_password_ui.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Text("Ganti Kata Sandi"),
          textTheme: TextTheme(title: TextStyle(color: CommonColors.text_black, fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.white,
        body: ForgotPasswordUI()
    );
  }
}
