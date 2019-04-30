import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {

  int _cuttentIndex = 0;
  
  void _onTaphandler(int index){

    setState(() {
          _cuttentIndex = index;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: _cuttentIndex,
          onTap: _onTaphandler,  // onTap必须是 void Function(T value)
          type: BottomNavigationBarType.fixed,  //当item大于等于3时 必须设置type才显示
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('历史'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('列表'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的'),
            )
          ],
        );
  }
}
