import 'package:flutter/material.dart';

/**
 * 从这个列子可以看出，ListView嵌套一个listView 貌似不用处理滑动冲突问题
 */
class HScrollListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "listView",
      home:HScrollListPage(),
    );
  }
}

class HScrollListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
          title: Text("水平的ListView"),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
              child: Center(
                child: Text("A"),
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
              child: Text("B"),
            ),
            Container(
              width: 200.0,
              color: Colors.lightGreenAccent,
              child: Text("C"),
            ),
            Container(//嵌套一个数值滚动的lsitView
              width: 200,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Album'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Album'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
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
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.brown,
              child: Text("D"),
            )
          ],
        ));
  }

}
