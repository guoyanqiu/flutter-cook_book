import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    /**
     * 一个工厂构造函数，它允许我们可以通过json创建一个Post对象。
     */
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

Future<Post> _fetchPost() async{
  final response =
    await http.get("https://jsonplaceholder.typicode.com/posts/1");
  //使用dart:convert package将响应内容转化为一个json Map。
  final resJson = json.decode(response.body);

  return Post.fromJson(resJson);
}

class FetchDataPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("fetch data from http")
      ),
      body:Center(
        child: FutureBuilder<Post>(
            future: _fetchPost(),
            //snapshot为Post的快照
            builder:(context,snapshot){
               if(snapshot.hasData){
                  return Text(snapshot.data.title);
               }else if(snapshot.hasError){
                 return Text(
                     " error is ${snapshot.error}");
               }
               // By default, show a loading spinner
               return new CircularProgressIndicator();
            },
        ),
      )
    );
  }

}