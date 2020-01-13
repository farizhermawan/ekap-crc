import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:customer_response_care/screens/dashboard/components/bantuan_ui.dart';
import 'package:customer_response_care/screens/dashboard/components/home_ui.dart';
import 'package:customer_response_care/screens/dashboard/components/riwayat_ui.dart';
import 'package:customer_response_care/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:customer_response_care/common/components/tab_item.dart';

import 'components/home_ui.dart';


class DashboardPage extends StatefulWidget {
  
  final List<TabItem> dashboardTabItems = <TabItem>[
    TabItem('Beranda', Icons.home),
    TabItem('Riwayat', Icons.history),
    TabItem('Bantuan', Icons.help),
    TabItem('Akun', Icons.person),
  ];

  final List<Widget> screens = <Widget>[
    HomeUI(),
    RiwayatUI(),
    BantuanUI(),
    HomeUI(),
  ];
  
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screens,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: BubbleBottomBar(
          backgroundColor: Colors.transparent,
          opacity: 1,
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: changePage,
          items: widget.dashboardTabItems.map((TabItem item) {
            return BubbleBottomBarItem(
                backgroundColor: CommonColors.background_soft_blue,
                icon: Icon(item.icon, color: CommonColors.text_gray),
                activeIcon: Icon(item.icon, color: CommonColors.text_blue),
                title: Text(item.title, style: TextStyle(fontSize: 15, color: CommonColors.text_blue))
            );
          }).toList(),
        ),
      ),
    );
  }
}
