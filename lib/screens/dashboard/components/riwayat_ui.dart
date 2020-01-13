import 'dart:async';
import 'dart:convert';

import 'package:customer_response_care/common/constants/config.dart';
import 'package:customer_response_care/common/locales/momentID.dart';
import 'package:customer_response_care/common/models/history.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_moment/simple_moment.dart';
import 'package:customer_response_care/screens/riwayat/components/detail_ui.dart';


class RiwayatUI extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<RiwayatUI> {
  Future<List> getData() async {
    final response = await http.get(Config.API_BASE + "/histories");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        Moment moment = new Moment.now().locale(new LocaleId());
        History history = History.fromJson(list[i]);

        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: ()=>Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (BuildContext context)=> new Detail(list:list , index: i)
              )
            ),
            child: new Card(

              child: new ListTile(
                title: new Text(history.title),
                leading: new Icon(history.getIconByCategory()),
                subtitle: new Text("Dibuat ${moment.from(history.createdAt)}"),
              ),
            ),
          ),
        );
      },
    );
  }
}