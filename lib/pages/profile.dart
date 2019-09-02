import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.person_add),
            color: Colors.black,
            onPressed: () => {},
          ),
          title: Text(
            "profile.1",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.history),
            ),
          ],
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 68.0,
                      width: MediaQuery.of(context).size.width - 148.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("1"),
                              Text("2"),
                              Text("3"),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 25.0,
                                width:
                                    MediaQuery.of(context).size.width - 206.0,
                                child: RaisedButton(
                                  child: Text("teste"),
                                  onPressed: () {},
                                  color: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.5),
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 8.0),
                                height: 25.0,
                                width: 58.0,
                                child: RaisedButton(
                                  child: Icon(
                                    Icons.settings,
                                    size: 20,
                                    color: Colors.black87,
                                  ),
                                  onPressed: () {},
                                  color: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.5),
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
