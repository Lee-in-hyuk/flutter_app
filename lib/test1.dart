import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 run해달라는 문구(const 뒤에 앱의 메인페이지 입력)
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Studying Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱임'),
        ),
          // 박스 위치 정렬
          // 'Container'를 클릭하면 'body' 옆에 전구가 생기는데,
          // select할 수 있는 것 중에서 center를 누르면 body의 위치를 center로 지정한 것으로 작성됨.
          // center대신 Align을 선택하면 정렬할 방향을 선택할 수 있음.
        body: Align(
          alignment: Alignment.topCenter,
          // alignment: Alignment.bottomCenter,
          child: Container(
            // 박스 width를 가로로 꽉 차게는? 'double.infinity'
            width: double.infinity, height: 50,
            // 박스에 여백 주는 법
            // margin: EdgeInsets.all(20),
            // 박스에 일부만 여백 주는 법
            // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
            margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Text('dasdsa'), // 그 박스 안에 텍스트

            // 나머지 박스 스타일들은 decoration 안에 넣어야함.
            decoration: BoxDecoration(
            // 테두리 넣는 법
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(50)
            ),

          ),
        ),
        bottomNavigationBar:BottomAppBar(
          child: Container( // bottomAppBar에 높이 주려고 따로 Container 작성
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          )
        )
      )
    );
  }
}
