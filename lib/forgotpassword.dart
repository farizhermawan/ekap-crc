import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
          iconTheme: IconThemeData(
            color: Color(0xff262021), //change your color here
          ),
          backgroundColor: Color(0xffffffff),
          title: Text("Ganti Kata Sandi"),
          textTheme: TextTheme(
              title: TextStyle(
                  color: Color(0xff262021),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Color(0xffffffff),
        body: Container(
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
                          color: const Color(0xff262021),
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
                          color: const Color(0xff262021),
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
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Email atau Nomor Telepon',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
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
                  color: Color(0xff0657A3),
                  elevation: 0,
                  minWidth: 350,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ]),
          ),
        ));
  }
}
