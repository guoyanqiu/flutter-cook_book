import 'package:flutter/material.dart';

class MixedApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "不同的List 类型",
        home:MixedListPage(),
    );
  }
}

class MixedListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("long list"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            final item =items[index];
            if(item is _HeadingItem){
              return ListTile(
                title:Text(item.heading,style: Theme.of(context).textTheme.headline),
              );
            }else if(item is _MessageItem){
              return ListTile(
                title:Text(item.sender),
                subtitle: Text(item.body),
              );
            }
          }
      ),
    );
  }

}
//数据源
List<_Item> items =List<_Item>.generate(10000,
(index)=> index % 6==0 ?
_HeadingItem("heading $index")
:_MessageItem("Sender $index"," messbody $index")
);

abstract class _Item {}

class _HeadingItem implements _Item {
  final String heading;

  _HeadingItem(this.heading);
}

class _MessageItem implements _Item {
  final String sender;
  final String body;
  _MessageItem(this.sender,this.body);
}