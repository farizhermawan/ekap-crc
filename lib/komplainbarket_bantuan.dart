import 'package:flutter/material.dart';

class BantuanKomplainBarketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: IconThemeData(
            color: Color(0xff262021), //change your color here
          ),
          backgroundColor: Color(0xffffffff),
          title: Text("Bantuan Komplain Barket"),
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
                        text: 'Apa itu komplain barket?',
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
                        text: 'Komplain Barang Ketinggalan (Barket) adalah layanan bagi pelanggan untuk melakukan komplain atas barang yang tertinggal di dalam armada taxi setelah melakukan perjalanan dengan Blue Bird.',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xff262021),
                          fontSize: 14,
                        )),
                  ]),
                ),
              ),
              
            ]),
          ),
        ));
  }
}
