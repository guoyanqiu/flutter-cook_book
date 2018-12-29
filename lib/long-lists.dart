import 'package:flutter/material.dart';
class LongListViewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "长listView",
      home: LongListPage(),
    );
  }

}

class LongListPage extends StatelessWidget{
  List<String> items =List<String>.generate(10000, (index)=>"Item $index");
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("long list")
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${items[index]}"),
            );
          }),
    );
  }

}