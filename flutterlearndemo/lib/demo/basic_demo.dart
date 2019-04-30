import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerBoxDecorationDemo();
  }
}


class ContainerBoxDecorationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32,color: Colors.white,),
            // color: Color.fromRGBO(3, 54, 255, 1.0),  //container不能同时有color和decoration
            padding: EdgeInsets.all(16), //内边距
            margin: EdgeInsets.all(8), //配合mainAxisAlignment显示 如果mainAxisAlignment没有设置那么row默认的是x主轴最嘴边开始,y在中间。在结合margin最终x=8开始。
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid, //为边框绘制实线
              ),

            ),
            
          )
        ],
      ),

    );
  }
}



class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic, //斜体
          fontWeight: FontWeight.w100, //字体粗细
        ),
        text: 'ninghao',
        children: [
          TextSpan(
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.normal, //斜体
              fontWeight: FontWeight.w300, //字体粗细
            ),
            text: 'helloword',
          ),
          TextSpan(
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 22.0,  //fontStyle和fontWeight 继承最外面的TextSpan
            ),
            text: 'HI',
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final String title = '将进酒';
  final String author = '李白';
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$title》--- $author \n 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      style: _textStyle,
      textAlign: TextAlign.left,
      maxLines: 4, //最多三行
      overflow: TextOverflow.ellipsis, //显示不完的省略
    );
  }
}
