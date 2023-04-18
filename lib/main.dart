import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title, theme, home
      title: "AppBar",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // appBar, body
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Icon Menu"),
        centerTitle: true,
        elevation: 0.0,
        // IconButton 의 필수 인자 : icon, onPressed
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   // 클릭 이벤트와 같다
        //   onPressed: (){
        //     print('menu button is clicked');
        //   },
        // ),
        // 복수의 아이콘을 오른쪽에 배치
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            // 클릭 이벤트와 같다
            onPressed: (){
              print('shopping_cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            // 클릭 이벤트와 같다
            onPressed: (){
              print('search button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            // 클릭 이벤트와 같다
            onPressed: (){
              print('account button is clicked');
            },
          ),
        ],
      ),
      // 위에서 만든 햄버거 메뉴 만들기 : Drwer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // 헤더
            UserAccountsDrawerHeader(
              currentAccountPictureSize: Size.fromRadius(40.0),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/bb.png'),
                backgroundColor: Colors.white,
              ),

              // 크기 변경
              otherAccountsPicturesSize: Size.fromRadius(30.0),
              // 여러개가 가능
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dd.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/cc.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text("ICT 인재개발원"),
              accountEmail: Text("ictedu@gmail.com"),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[850],),
              title: Text('HOME'),
              onTap: (){
                print('Home is clicked');
              },
              // 오른쪽
              trailing: Icon(Icons.add,
                color: Colors.grey[850],),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],),
              title: Text('settings'),
              onTap: (){
                print('settings is clicked');
              },
              // 오른쪽
              trailing: Icon(Icons.add,
                color: Colors.grey[850],),
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo,
                color: Colors.grey[850],),
              title: Text('photo'),
              onTap: (){
                print('photo is clicked');
              },
              // 오른쪽
              trailing: Icon(Icons.add,
                color: Colors.grey[850],),
            ),
          ],
        ),
      ),
    );
  }
}
