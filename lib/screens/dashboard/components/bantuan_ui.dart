import 'package:flutter/material.dart';

class BantuanUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/barket_circle.png'),
            ),
            title: Text('Bantuan Komplain Barket'),
            onTap: () {
              Navigator.of(context).pushNamed('/bantuanbarket');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/layanan_circle.png'),
            ),
            title: Text('Bantuan Komplain Layanan'),
            onTap: () {
              Navigator.of(context).pushNamed('/bantuanlayanan');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/aplikasi_circle.png'),
            ),
            title: Text('Bantuan Komplain Aplikasi'),
            onTap: () {
              Navigator.of(context).pushNamed('/bantuanaplikasi');
            },
          ),
        ),
      ],
    );
  }
}