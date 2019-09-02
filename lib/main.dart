import 'package:flutter/material.dart';
import 'package:flutter_insta/pages/home.dart';

void main() {
  runApp(InstaFlutter());
}

class InstaFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Fluuter',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Home(),
    );
  }
}
