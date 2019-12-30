import 'package:flutter/material.dart';

class KomplainBarketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: IconThemeData(
            color: Color(0xff262021), //change your color here
          ),
          backgroundColor: Color(0xffffffff),
          title: Text("Komplain Barket"),
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
                padding: EdgeInsets.only(top: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Transaksi Pemesanan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff262021),
                          fontSize: 18,
                        )),
                  ]),
                ),
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Tanggal Pesan Taksi',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                   Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Jam Penjemputan',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Jam Tiba',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Lokasi Penjemputan',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Lokasi Tujuan',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'No. Lambung Mobil',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Nama Driver',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Detail Komplain Barket',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff262021),
                          fontSize: 18,
                        )),
                  ]),
                ),
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Pilih Jenis Barang',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                   Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Nama Barang',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Deskripsi Barang  ',
                            labelStyle: TextStyle(
                                fontSize: 15, color: const Color(0xff262021))),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: TextFormField(
                        style: TextStyle(
                          color: const Color(0xff262021),
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xff262021))),
                            labelText: 'Alat Pengantaran',
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
                    'Ajukan Komplain',
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
