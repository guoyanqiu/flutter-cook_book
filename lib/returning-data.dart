import 'package:flutter/material.dart';
class ReurnDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Returning Data Demo'),
      ),
      body: new Center(child: new _SelectionButton()),
    );
  }
}

class _SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateAndDisplaySelection(context);
      },
      child: Center(child: Text("pick an options,any option!"),),
    );
  }
  //因为需要等待记过，所以用async修饰
  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _SelectionScreen()),
    );
    // After the Selection Screen returns a result, show it in a Snackbar!
    Scaffold
        .of(context)
        .showSnackBar(new SnackBar(content: new Text("$result")));
  }

}

class _SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
           title:Text("Pick an otion")
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child:RaisedButton(
                   onPressed: (){
                     //返回上一页，并且返回一个数据
                     Navigator.pop(context,"Yep!");
                   },

                  child: Text("Yep!"),
                )
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child:RaisedButton(
                    onPressed: (){
                      //返回上一页，并且返回一个数据
                      Navigator.pop(context,"Nope!");
                    },

                    child: Text("Nope!"),
                  )
              )
            ],
          ),
        )
    );
  }

}