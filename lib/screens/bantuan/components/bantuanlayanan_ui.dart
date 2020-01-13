import 'package:flutter/material.dart';

class BantuanLayananUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: IconThemeData(
            color: Color(0xff262021), //change your color here
          ),
          backgroundColor: Color(0xffffffff),
          title: Text("Bantuan Komplain Layanan"),
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
                padding: EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Apa itu komplain layanan?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff262021),
                          fontSize: 16,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Komplain Layanan adalah layanan bagi pelanggan untuk melakukan komplain atas pelayanan atau sikap pengemudi Blue Bird ketika melayani perjalanan pelanggan.',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Bagaimana cara melakukan Komplain Layanan?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '1. Pastikan Anda memiliki akun CRC',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image(
                          image: AssetImage('images/bantuan_layanan1.png'),
                           width: 190,
                          height: 393,
                        ),
              ),
              
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '2. Pada Beranda, pilih menu Komplain Layanan',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image(
                          image: AssetImage('images/bantuan_layanan2.png'),
                           width: 190,
                          height: 393,
                        ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: '3. Lengkapi data yang ada',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image(
                          image: AssetImage('images/bantuan_layanan3.png'),
                           width: 190,
                          height: 393,
                        ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Bagaimana cara melihat status Komplain Layanan?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Pada Beranda, lihat tab Aktifitas yang menunjukkan aktifitas terakhir komplain Anda dan berfungsi untuk melacak status komplain yang diajukan.',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image(
                          image: AssetImage('images/bantuan_layanan4.png'),
                           width: 190,
                          height: 393,
                        ),
              ),

            ]),
          ),
        ));
  }
}
