import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 run해달라는 문구(const 뒤에 앱의 메인페이지 입력)
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.menu),
          title: Text('금호동 3가'),
          actions: [Icon(Icons.search),Icon(Icons.menu),Icon(Icons.doorbell_sharp)],
        ),
        drawer: createrDrawer(),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset('IU_main.png', width: 150,),
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('아이유 콘서트 티켓'),
                    Text('15만원'),
                    Text('네고 안 됨'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.favorite_border),Text('4')],
                    )
                  ],
                ),
              ),
              // Row( // 나 혼자 해본거..
              //   children: [
              //     Column( children: [
              //       Text('아이유 콘서트 티켓'),
              //       Text('15만원'),
              //       Text('네고 안 됨'),
              //       Row( children: [Icon(Icons.add),Text('4')],)
              //     ],)
              //   ],
              // )
            ],
          ),
          // child: ElevatedButton(
          //   child: Text('글자'),
          //   onPressed: (){},
          // ),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}

Widget createrDrawer() {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.person, color: Colors.white,),
                Text('메뉴', style: TextStyle(color: Colors.white, fontSize: 16),)
              ],
            ),
          decoration: BoxDecoration(
            color: Colors.blue
          ),
        ),
        createFolderInDrawer('Flutter'),
        createFolderInDrawer('Android'),
        createFolderInDrawer('IOS'),
      ],
    ),
  );
}

Widget createFolderInDrawer(String folderName){
  return Container(
    padding: EdgeInsets.all(8),
    child: Text(folderName),
  );
}