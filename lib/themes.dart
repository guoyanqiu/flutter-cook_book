import 'package:flutter/material.dart';
//Theme.of(context)将查找Widget树并返回树中最近的Theme。如果我们的Widget之上有一个单独的Theme定义，则返回该值。如果不是，则返回App主题
class ThemeApp extends StatelessWidget {
  final appName = "yanqiu";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.yellow,
        accentColor: Colors.green,
      ),
      home: ThemePage(),
    );
  }
}

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Theme 测试"),
      ),
      body: Center(
        child: Container(
          color: Theme
              .of(context)
              .accentColor,
          child: Text(//显示绿色
            "text white a back grouund color",
            style: Theme
                .of(context)
                .textTheme
                .title,
          ),
        ),
      ),
      floatingActionButton: new Theme(//单独使用主题，不适用app级别的主题
          data: Theme.of(context).copyWith(accentColor: Colors.deepPurple),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          )
      ),
    );
  }
}