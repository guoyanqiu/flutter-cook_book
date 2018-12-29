import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title:"image demo",
      home:NetWorkImagePage(),
    );
  }

}

class NetWorkImagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("flutter image"),
        ),
        body:Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544713286096&di=2ded84fedc541868323b87680110bf9d&imgtype=0&src=http%3A%2F%2Fpic16.nipic.com%2F20111001%2F474388_083937366191_2.jpg"
        )
    );
  }

}