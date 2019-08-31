import 'package:flutter/material.dart';
import 'package:flutter_insta/containers/feed.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          tooltip: 'Closes application',
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
          children: <Widget>[
            Text("Stories"),
            Feed(),
          ],
        ),
      ),
    );
  }
}
