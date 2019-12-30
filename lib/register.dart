import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        decoration: BoxDecoration(
        ),
        child: Padding(
          padding: EdgeInsets.all(23),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Buat akun,',
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
                        text: 'daftar untuk memulai',
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
                            labelText: 'Nama Lengkap',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
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
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'DAFTAR',
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
                height: 205,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      'Sudah punya akun? ',
                      style: TextStyle(
                          color: Color(0xff262021)
                      )

                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Text(
                      'Masuk disini',
                      style: TextStyle(
                          color: Color(0xff0657A3)
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
