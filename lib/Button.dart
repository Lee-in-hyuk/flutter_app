import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// StatelessWidget - state를 안 쓰는 위젯을 만들 때.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}

// StatefulWidget - state를 포함한 위젯을 만들 때
class MyHomePage extends StatefulWidget {
  @override
  // state를 포함한 클래스 - '_MyHomePageState'
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  // 문자열을 배열로 담을 때 final List<String> 를 써야 됨.
  // 숫자를 담을 땐 int
  // List라는 데이터 타입을 작성할 땐
  // List<데이터 타입 종류> 변수명 = [배열값1,배열값2,...]
  final List<String> _textList = ['Hello, World!', '안녕, 세상아!'];
  // 변수명 앞에 '_(언더바)'를 쓰는 이유는 private변수로 쓰기 위함인데, 굳이 안 써도 됨.
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('플러터 버튼 테스트'),),
      body: Text(
        _textList[idx],
        style: TextStyle(fontSize: 40),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
            ],
          ),
        )
      ),
      // floatingActionButton - 플로팅작업버튼(FAB)은 단일 화면에 여러개를 생성하는건 특별한 경우에만!,
      // 생성, 공유, 탐색 등을 수행할 때 쓰면 좋음. (물론 화면과 관련이 있어야 됨)
      floatingActionButton: FloatingActionButton(
        mini: true, // 크키 줄이는거
        onPressed: (){ // 버튼 클릭했을 때 실행할 코드 작성 공간
          setState((){ // 상태 관리
            idx ^= 0x01; // idx값을 0 또는 1이 되게 exclusive Or(^)를 씀 (if문으로 작성해도 됨)
            // if문으로 작성한거
            // if(idx == 0){
            //   idx = 1;
            // }else {
            //   idx = 0;
            // }
          });
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.touch_app),
      ),
    );
  }
}
