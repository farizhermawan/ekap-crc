import 'package:customer_response_care/themes/colors.dart';
import 'package:flutter/material.dart';

class ForgotPasswordUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(23),
        child: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Lupa kata sandi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: CommonColors.text_black,
                      fontSize: 36,
                    )),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text:
                        'Masukkan email atau nomor handphone yang terdaftar. Kami akan mengirimkan OTP atau tautan untuk reset kata sandi kamu.',
                    style: TextStyle(
                      color: CommonColors.text_black,
                      fontSize: 18,
                    )),
              ]),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Form(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: TextFormField(
                    style: TextStyle(
                      color: CommonColors.text_black,
                    ),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: CommonColors.text_black)),
                        labelText: 'Email atau Nomor Telepon',
                        labelStyle: TextStyle(
                            fontSize: 15, color: CommonColors.text_black)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'Ganti Kata Sandi',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              color: CommonColors.button_blue,
              elevation: 0,
              minWidth: 350,
              height: 60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ]),
      ),
    );
  }
}
