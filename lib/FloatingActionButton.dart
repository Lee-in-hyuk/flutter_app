import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Icon(Icons.phone),
              Icon(Icons.message)
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton.extended( // 버튼에 text를 넣을 땐 extended를 추가작성
          onPressed: (){},
          // extended를 추가하고 작성할 때
          label: Text('click'),
          icon: Icon(Icons.add),
          
          // extended를 빼고 작성할 때
          // mini: true, // FAB버튼 크기 작게 (보통or미니 둘 중 하나임)
          // backgroundColor: Colors.yellow, // 배경색
          // hoverColor: Colors.amberAccent, // hover했을 때 변할 색상
          // child: Icon(Icons.add), // FAB에 들어갈 아이콘
        ),

        // FAB위치 정할 땐 Location작성
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
