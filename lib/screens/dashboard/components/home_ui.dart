import 'package:customer_response_care/themes/colors.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Halo, Username",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CommonColors.text_black)),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Color(0xffa7a7a7),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 48,
            margin: EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
              color: Color(0xfff2f2f2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 18, right: 12),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle:
                      TextStyle(fontSize: 18, color: Color(0xffa7a7a7)),
                      suffixIcon:
                      Icon(Icons.search, color: Color(0xffa7a7a7))),
                ),
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.only(left: 25, right: 5, top: 25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/komplain_barket');
                    },
                    child: Card(

                      child: Image(

                        image: AssetImage('images/komplain_barket.png'),
                        width: 155,
                        height: 110,
                      ),
                    ),
                  )),
              new Padding(
                  padding: EdgeInsets.only(left: 5, right: 25, top: 25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/komplain_layanan');
                    },
                    child: Card(
                      child: Image(
                        image: AssetImage('images/komplain_layanan.png'),
                        width: 155,
                        height: 110,
                      ),
                    ),
                  )),
            ],
          ),
          new Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 25, right: 5, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/komplain_aplikasi');
                    },
                    child: Card(
                      child: Image(
                        image: AssetImage('images/komplain_aplikasi.png'),
                        width: 155,
                        height: 110,
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}