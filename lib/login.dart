import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        text: 'Selamat datang,',
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
                        text: 'masuk untuk melanjutkan',
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
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: const Color(0xff262021),
                      ),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: const Color(0xff262021))),
                          labelText: 'Kata Sandi',
                          labelStyle: TextStyle(
                              fontSize: 15, color: const Color(0xff262021))),
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
                          color: Color(0xff0657A3)
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
                  color: Color(0xff0657A3),
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
                        color: Color(0xff262021)
                    )

                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/register');
                    },
                    child: Text(
                      'Daftar disini',
                      style: TextStyle(
                          color: Color(0xff0657A3)
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
