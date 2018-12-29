import 'package:cook_book/cached-images.dart';
import 'package:cook_book/dismissible.dart';
import 'package:cook_book/fading-in-images.dart';
import 'package:cook_book/fetch-data.dart';
import 'package:cook_book/grid-lists.dart';
import 'package:cook_book/handling-taps.dart';
import 'package:cook_book/horizontal-list.dart';
import 'package:cook_book/navigation-basics.dart';
import 'package:cook_book/network-image.dart';
import 'package:cook_book/basic-list.dart';
import 'package:cook_book/long-lists.dart';
import 'package:cook_book/mixed-list.dart';
import 'package:cook_book/returning-data.dart';
import 'package:cook_book/ripples.dart';
import 'package:cook_book/themes.dart';
import 'package:flutter/material.dart';

//void main() => runApp(ThemeApp());
//void main() => runApp(ImageApp());
//void main() => runApp(CacheImageApp());
//void main() => runApp(FadeInImageApp());
//void main() => runApp(ListApp());
//void main() => runApp(HScrollListApp());
//void main() => runApp(LongListViewApp());
//void main() => runApp(MixedApp());
//void main() => runApp(GridApp());
//void main() => runApp(TapsApp());
//void main() => runApp(RipplesApp());
//void main() => runApp(DismissileApp());
//void main() => runApp(NavigationApp());
void main() => runApp(CookBook());

class CookBook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CookBook",
      home: CookBookList()
    );
  }

}
//https://blog.csdn.net/nimeghbia/article/details/84388725
class CookBookList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CookBook demo"),
      ),
      body: ListView(
        children: <Widget>[

          ListTile(
            title: Text("显示来自网上的图片"),
            onTap: (){
              print("点击---");
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> NetWorkImagePage()
                  )
              );
            },
          ),
          ListTile(
            title: Text("用占位符淡入图片"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> FadingInImagePage()
                  )
              );
            },
          ),  ListTile(
            title: Text("使用缓存图"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> CacheImagePage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("创建一个基本list"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> BasicListPage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("创建一个水平list"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> HScrollListPage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("创建一个水平list"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> HScrollListPage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("使用长列表"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> LongListPage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("创建不同类型子项的List"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> MixedListPage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("创建一个 grid List"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> GridListPage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("处理点击"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> HandingTapsPage()
                  )
              );
            },
          ),
          ListTile(
            title: Text("添加Material触摸水波效果"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> RipplesPage()
                  )
              );
            },
          ),
          ListTile(
            title: Text("实现滑动关闭"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> DismissiblePage()
                  )
              );
            },
          ),

          ListTile(
            title: Text("导航到新页面并返回"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> NavigationPage()
                  )
              );
            },
          ),
          ListTile(
            title: Text("从新页面返回数据给上一个页面"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> ReurnDataPage()
                  )
              );
            },
          ),   ListTile(
            title: Text("从互联网上获取数据"),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> FetchDataPage()
                  )
              );
            },
          ),
        ],
      ),
    );
  }

}