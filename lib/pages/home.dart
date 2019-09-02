import 'package:flutter/material.dart';
import 'package:flutter_insta/containers/feed.dart';
import 'package:flutter_insta/pages/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _cIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          color: Colors.black,
          onPressed: () => {},
        ),
        title: IconButton(
          icon: Image.asset('assets/instagram.png'),
          iconSize: 90.0,
          tooltip: 'Volte ao inicio',
          onPressed: () => {},
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.live_tv),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Stories"),
            Feed(),
            Feed(),
            Feed(),
            Feed(),
          ],
        ),
      ),
    ),
    Profile(),
  ];

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _widgetOptions.elementAt(_cIndex),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Home'),
              activeIcon: Icon(Icons.home, color: Colors.black),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text('Search'),
              activeIcon: Icon(Icons.search, color: Colors.black),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
              ),
              title: Text('Search'),
              activeIcon: Icon(Icons.add_box, color: Colors.black),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              title: Text('Search'),
              activeIcon: Icon(Icons.favorite, color: Colors.black),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              title: Text('Search'),
              activeIcon: Icon(Icons.person, color: Colors.black),
            ),
          ],
          onTap: (index) {
            _incrementTab(index);
          },
        ));
  }
}
