import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

/**
 * 图片渐入和展位图
 */
class FadeInImageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Fade In image",
      home: FadingInImagePage(),
    );
  }
}

class FadingInImagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("FadeInImage")
      ),
      body: Stack(
        children: <Widget>[
          Center(child: CircularProgressIndicator()),
          Center(
            child: Text("会被图片遮挡",style: TextStyle(color: Colors.red),),
          ),
          Center(
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544713286096&di=2ded84fedc541868323b87680110bf9d&imgtype=0&src=http%3A%2F%2Fpic16.nipic.com%2F20111001%2F474388_083937366191_2.jpg"),
          ),
          Center(
            child: Text("不会被遮挡",style: TextStyle(color: Colors.red),),
          ),
          Center(
            child: Text("Hello Beatuy",style: TextStyle(color: Colors.green),),
          )
        ],
      ),
    );
  }

}