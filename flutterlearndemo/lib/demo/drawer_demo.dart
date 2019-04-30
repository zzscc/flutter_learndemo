import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          padding: EdgeInsets.zero,
          child: ListView(     //listView适合用于少量item的列表,listView.builder适合大量item的列表
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('wanghao',style: TextStyle(fontWeight: FontWeight.bold),),
                accountEmail: Text('wanghao@ninghao.net'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://resources.ninghao.org/images/wanghao.jpg',
                  )
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('http://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6),BlendMode.hardLight),
                  ),
                ),
              ),
              ListTile(
                title: Text('message',textAlign: TextAlign.right,),
                trailing: Icon(Icons.message,color:Colors.black12,size:22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('message',textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite,color:Colors.black12,size:22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('message',textAlign: TextAlign.right,),
                trailing: Icon(Icons.message,color:Colors.black12,size:22.0),
                onTap: () => Navigator.pop(context),
              ),
            ],
          )
        );
       
  }
}