import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 앱 run해달라는 문구(const 뒤에 앱의 메인페이지 입력)
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            // Flexible로 컨테이너 사이즈 비율을 조절할 수 있다.
            // 아래에선 3:7 비율료 작성함.
            // Flexible(child: Container(color: Colors.blue,), flex: 3,),
            // Flexible(child: Container(color: Colors.green,), flex: 7,),
            // Row()안에서 박스 하나만 꽉 채우고 싶으면 Expanded()
            // 본인만 flex:1 한 것과 같아 보임.
            Expanded(child: Container(color: Colors.yellow,)),
            // 아래 컨테이너의 크기를 제외한 나머지 부분을
            // Expanded안에 컨테이너로 가득 채움
            Container(width: 100, color: Colors.red,)
          ],
        ),
      ),
    );
  }
}
