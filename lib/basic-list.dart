import 'package:flutter/material.dart';
class ListApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
      title: "listView",
      home:BasicListPage(),
    );
  }
}

class BasicListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("ListView Demo"),
        ),
        body:ListView(
          children: <Widget>[
            Text("hello"),
            Text("flutter"),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            )
          ],
        )
    );
  }

}