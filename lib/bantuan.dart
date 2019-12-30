import 'package:flutter/material.dart';

void main() => runApp(BantuanPage());

class BantuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Color(0xff262021), //change your color here
        ),
        backgroundColor: Color(0xffffffff),
        title: Text("Bantuan"),
        textTheme: TextTheme(
            title: TextStyle(
                color: Color(0xff262021),
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}


// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  
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
