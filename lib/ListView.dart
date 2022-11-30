import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 run해달라는 문구(const 뒤에 앱의 메인페이지 입력)
}

var bot = BottomAppBar(
    child: Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.file_present)
        ],
      ),
    )
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Column(
              children: [
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길동',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길동',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길동',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길동',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길동',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길동',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길동',style: TextStyle(fontSize: 25))],),
                Row(children: [Icon(Icons.account_circle,size: 50),Text('홍길',style: TextStyle(fontSize: 25))],),
              ],
            )
          ],
        ),
        bottomNavigationBar:
            // 커스텀위젯은 재사용 많은 UI들 or 큰 페이지일 때 사용하는게 좋음
        bot // 3. 변수 bot으로 만들어서 커스텀 위젯 적용 - 변하지 않는 UI들은 변수 함수로 축약해서 써도 됨.
        // BottomContent() // 2. 클래스 형태로 커스텀 위젯 적용
        // BottomAppBar( // 1. 기본 문법
        //   child: Container(
        //     height: 70,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Icon(Icons.phone),
        //         Icon(Icons.message),
        //         Icon(Icons.file_present)
        //       ],
        //     ),
        //   )
        // ),
      ),
    );
  }
}

class BottomContent extends StatelessWidget {
  const BottomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.file_present)
            ],
          ),
        )
    );
  }
}

