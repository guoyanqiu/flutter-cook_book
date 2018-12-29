import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//仿照QQ滑动删除
class DismissileApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
       title: "dismissing items",
       home:DismissiblePage(),
    );
  }
}

class DismissiblePage extends StatelessWidget{
  List<String> items =List<String>.generate(10000, (index)=>"Item $index");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title:Text("dismissing items")
        ),
        body:ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              final item = items[index];
              return Dismissible(
                key:new Key(item),//必许字段
                //不对direction进行处理，左右滑动都可以删除item
                onDismissed: (direction){
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("$item"),));
                },
                background: Container(color: Colors.red,
                  child: Center(
                      child:Text("滑动删除")
                  ),
                ),
                child: ListTile(title: Text("$item  数据项"),),
              );
            }
        )
    );
  }

}