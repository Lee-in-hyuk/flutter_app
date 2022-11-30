import 'package:flutter/material.dart';
import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
// pubspec.yaml에 animated패키지 추가

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug띠 안 보이게.
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  State<DemoApp> createState() => _DemoAppState();
}
// 위,아래 class들은 stful쓰면 자동생성됨
class _DemoAppState extends State<DemoApp> {

  int index = 0;

  Widget exampleOne(){
    return Container(
      child: FloatingActionButton(
        // backgroundColor: Colors.white,
        onPressed: (){
          setState(() {
            index = index + 1;
          });
        },
        // focusColor: Colors.yellow, // 버튼에 입력포커스가 있을 때 버튼을 채우는 색상(그다지 눈에 안 띔)
        // focusElevation: 16.0, // 버튼에 입력포커스가 있을 때 부모를 기준으로 이 버튼을 배치할 z좌표
        heroTag: 'add', // 이 속성을 설정하지 않으면 태그 충돌이 발생하기 때문에 작성하는게 좋음.
        child: Icon(Icons.add, color: Colors.black,),
      ),
    );
  }

  Widget exampleTwo() {
    return Container(
      child: FloatingActionButton(
        onPressed: (){
          setState(() {
            index += 1;
          });
        },
        focusColor: Colors.yellow,
        focusElevation: 16,
        heroTag: 'anything',
        child: Icon(Icons.text_rotation_angledown, color: Colors.black,),
      ),
    );
  }

  Widget exampleThree() {
    return Container(
      child: FloatingActionButton(
        onPressed: (){
          setState(() {
            index += 1;
          });
        },
        focusColor: Colors.yellow,
        focusElevation: 16,
        elevation: 2,
        heroTag: 'see',
        child: Icon(Icons.search, color: Colors.black,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) { // 이게 메인화면 전체 위젯 코드
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Animated Floating Action Button'),
      ),
      body: Center( // 센터에 index변수를 출력하겠다.
        child: Text(index.toString(),style: TextStyle(fontSize: 50, color: Colors.white,
            fontWeight: FontWeight.bold),),
      ),

      // 이 페이지의 메인인 AnimatedFAB
      floatingActionButton: AnimatedFloatingActionButton(
        colorEndAnimation: Colors.red, // 버튼 기본 컬러는 blue, animation되면 red로.
        colorStartAnimation: Colors.blue,
        animatedIconData: AnimatedIcons.menu_home, // animate되면 바뀌는 icon은 menu_home
        // fabButtons 속성을 사용해서 다른 FAB위젯들을 리스트로 만들 수 있음.
        fabButtons: <Widget>[ // 메인인 FAB 클릭하면 생성할 리스트를 Widget들로 불러와서 출력
          exampleOne(), // exampleOne위젯(첫번째에 나타남)
          exampleTwo(), // 2번째
          exampleThree(), // 3번째
        ],
      ),
    );
  }
}
