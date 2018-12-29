import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class CacheImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "缓存图片",
      home: CacheImagePage()
    );
  }
}

class CacheImagePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("cache image"),
      ),
      body: Center(
        child: CachedNetworkImage(
            placeholder: new CircularProgressIndicator(),
            imageUrl: "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2163593066,360628754&fm=26&gp=0.jpg"),

      ),
    );
  }

}