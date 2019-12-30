import 'package:customer_response_care/themes/colors.dart';
import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
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
                    text: 'Selamat datang,',
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
                    text: 'masuk untuk melanjutkan',
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
                TextFormField(
                  obscureText: true,
                  style: TextStyle(
                    color: CommonColors.text_black,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: CommonColors.text_black)),
                      labelText: 'Kata Sandi',
                      labelStyle: TextStyle(
                          fontSize: 15, color: CommonColors.text_black)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/forgot');
                },
                child: Text(
                  'Lupa kata sandi?',
                  style: TextStyle(
                      color: CommonColors.button_blue
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/dashboard');
              },
              child: Text(
                'MASUK',
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
          SizedBox(
            height: 260,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'Belum unya akun? ',
                  style: TextStyle(
                      color: CommonColors.text_black
                  )

              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/register');
                },
                child: Text(
                  'Daftar disini',
                  style: TextStyle(
                      color: CommonColors.button_blue
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    ); 
  }
}