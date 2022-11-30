import 'package:flutter/material.dart';
import 'package:flutter_app/Button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
        centerTitle: true,
      ),
      // Column을 써서 박스 나열은 이렇게 작성
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       width: 450,
      //       height: 150,
      //       color: Colors.redAccent,
      //     ),
      //     Container(
      //       width: 350,
      //       height: 125,
      //       color: Colors.blueAccent,
      //     ),
      //     Container(
      //       width: 250,
      //       height: 100,
      //       color: Colors.cyanAccent,
      //     ),
      //     Container(
      //       width: 150,
      //       height: 75,
      //       color: Colors.purpleAccent,
      //     ),
      //   ],
      // ),
      // stack을 써서 박스 겹치게 생성하면 ?
      body: Container( // 기본박스를 먼저 생성
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        // 기본 박스가 position:relative
        // 그 안에 Stack의 박스들이 position:absoloute를 가지는걸로 보임
        child: Stack( // 자식요소에서 Stack을 작성
          children: [ // 그 안에 박스들을 만들기 위해 children으로 배열 생성
            Container(
              width: 450,
              height: 150,
              color: Colors.redAccent,
            ),
            // Stack의 자식 박스가 겹쳐져서 생성이 됐다면 그 박스들의 위치를 지정할 땐 Positioned를 이용해서 위치 조정
            // blueAccent색상의 박스는 top에서 100만큼 이동한 위치에서 생성이 됨.
            Positioned(
              top: 100,
              child: Container(
                width: 350,
                height: 125,
                color: Colors.blueAccent,
              ),
            ),
            Positioned(
              left: 200, // cyanAccent박스 뒤쪽에 나타나는거 보이게 하려고 마지막에 추가함.
              child: Container( // 마지막으로 Stack은 먼저 작성된 박스를 뒤쪽으로 보냄.
                // 따라서 greenAccent색상의 박스는 cyanAccent박스보다 뒤쪽에 생성되는데,
                // 크기는 greenAccent색상의 박스가 더 작기 때문에 화면에선 보이지 않음.(cyanAccent박스가 앞으로 나와있어서 가림)
                width: 150,
                height: 75,
                color: Colors.greenAccent,
              ),
            ),
            Container(
              width: 250,
              height: 100,
              color: Colors.cyanAccent,
            ),
            Container(
              width: 150,
              height: 75,
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
