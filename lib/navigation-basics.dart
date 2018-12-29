import 'package:flutter/material.dart';

class NavigationApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "路由应用",
      home: NavigationPage(),
    );
  }

}

class NavigationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
         title:Text("first page")
       ),
       body: Center(
          child: RaisedButton(
              child: Text("下一页"),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=> _SecondScreen()
                    )
                );
              }
          ),
       ),
    );
  }
}

class _SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
         title: Text("second page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('上一页'),
            onPressed: (){
               Navigator.pop(context);
            }),
      ),
    );
  }

}