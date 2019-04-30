import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/navigation_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,   //主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255,0.5), //高亮颜色
        splashColor: Colors.white70, //水波纹颜色

      ),
      
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /*
   DefaultTabController:tab控制器
   TabBar
   Tab:tabBar的每个item
   TabBarView:tab控制器view
    */
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'navigation',
          //   onPressed: () => debugPrint('navigation is prassed'),
          // ),  //这个leading是我们自己添加上去的，如果这个leading注释掉，那么有drawer的情况会自动生成一个leading，点击会展开drawer
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('navigation is prassed'),
            )
          ],
          title: Text('nihao'),
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_airport),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history,size: 128,color: Colors.black12,),
            Icon(Icons.directions_bike,size: 128,color: Colors.black12,)
          ],
        ),
        drawer: DrawerDemo(),// endDrawer: ,   //右边的边栏是 endDrawer
        bottomNavigationBar: BottomNavigationDemo(),
      )
    );
  }
}
