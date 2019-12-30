import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';


class DashboardPage extends StatefulWidget {
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
      backgroundColor: Color(0xFFffffff),
      body: SingleChildScrollView(
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
                          color: Color(0xff262021))),
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
      ),
      
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: BubbleBottomBar(
          backgroundColor: Colors.transparent,
          opacity: 1,
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: changePage,
          items: <BubbleBottomBarItem>[
            
            BubbleBottomBarItem(
              
              backgroundColor: Color(0xffACC1D4),
              icon: Icon(
                Icons.home,
                color: Color(0xffa7a7a7),
              ),
              activeIcon: Icon(Icons.home, color: Color(0xff0657A3)),
              title: Text("Beranda",
                  style: TextStyle(fontSize: 15, color: Color(0xff0657A3))),
            ),
            BubbleBottomBarItem(
                backgroundColor: Color(0xffACC1D4),
                icon: Icon(Icons.history, 
                color: Color(0xffa7a7a7)),
                activeIcon: Icon(Icons.history, color: Color(0xff0657A3)),
                title: Text("Riwayat",
                    style: TextStyle(fontSize: 15, color: Color(0xff0657A3)))),
            BubbleBottomBarItem(
                backgroundColor: Color(0xffACC1D4),
                icon: Icon(
                  Icons.help,
                  color: Color(0xffa7a7a7),
                ),
                activeIcon: Icon(Icons.help, color: Color(0xff0657A3)),
                title: Text("Bantuan",
                    style: TextStyle(fontSize: 15, color: Color(0xff0657A3)))),
            BubbleBottomBarItem(
                backgroundColor: Color(0xffACC1D4),
                icon: Icon(
                  Icons.person,
                  color: Color(0xffa7a7a7),
                ),
                activeIcon: Icon(Icons.person, color: Color(0xff0657A3)),
                title: Text("Akun",
                    style: TextStyle(fontSize: 15, color: Color(0xff0657A3))))
          ],
        ),
      ),
    );
  }
}
