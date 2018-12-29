import 'package:flutter/material.dart';
//触摸水波纹效果
class RipplesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: " gesture Demo",
      home:RipplesPage(),
    );
  }

}
//使用的是build返回的widget
class RipplesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("触摸水波效果"),
      ),
      body: Center(child: _MyButton()),
    );
  }
}

class _MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
//        splashColor:Color(0xff00ff),
      onTap: (){
        final snackBar = SnackBar(content: Text("0000"),);
        Scaffold.of(context).showSnackBar(snackBar);
      },

      child: Container(
        padding:EdgeInsets.all(12.0),
        child: Center(child: Text('Ripples'),),
      ),
    );
  }

}