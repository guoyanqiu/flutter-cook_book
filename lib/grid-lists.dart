import 'package:flutter/material.dart';

class GridApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "GridListDemo",
      home: GridListPage(),
    );
  }
}

class GridListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GridListPageState();
  }
}

class GridListPageState extends State<GridListPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid App"),
      ),
      body: GridView.count(
        scrollDirection: currentIndex == 0 ? Axis.vertical : Axis.horizontal,
        crossAxisCount:  currentIndex == 0 ?2 : 3,
        children: List.generate(100, (index) {
          return Container(
            //item的间距
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                //item的背景颜色
                color:Colors.red,
                //设置item圆角
                borderRadius: BorderRadius.circular(8.0)),
            child:Center(
              child:  Text(
                "Item $index",
                style: Theme.of(context).textTheme.headline,
              ),
            )
          );
        }),
      ),
      //底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_downward), title: Text('竖直GridView')),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_forward), title: Text('水平GridView')),
          ],
          //如果不配置的话，点击水平的girdView，tab颜色不会改变
          currentIndex: currentIndex,
          fixedColor: Colors.deepPurple,
          onTap: (index) {
            setState(() {
              print("选中的index==" + index.toString());
              currentIndex = index;
            });
          }),
    );
  }
}
