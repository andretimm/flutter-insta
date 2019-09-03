import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.search),
          color: Colors.black,
          onPressed: () => {},
        ),
        title: Text(
          "Pesquisar",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_front),
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Text("Teste"),
    );
  }
}
