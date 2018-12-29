import 'package:flutter/material.dart';
//处理点击事件
class TapsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: " gesture Demo",
      home:HandingTapsPage(),
    );
  }

}
//使用的是build返回的widget
class HandingTapsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
         title: Text("点击"),
       ),
      body: Center(child: _MyButton()),
    );
  }
}

class _MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
       onTap: (){
         final snackBar = SnackBar(content: Text("Hello Flutter"),);
         Scaffold.of(context).showSnackBar(snackBar);
       },

      child: Container(
        width: 300,
        height: 400,
        padding:EdgeInsets.all(12.0),
        decoration: BoxDecoration(//修饰的都是child
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Center(child: Text('My Button'),),
      ),

//      child: Container(
//
//        padding:EdgeInsets.all(12.0),
//        decoration: BoxDecoration(//修饰的都是child
//            color: Theme.of(context).buttonColor,
//            borderRadius: BorderRadius.circular(8.0)
//        ),
//        child:   Text('My Button'),
//      ),
    );
  }

}
