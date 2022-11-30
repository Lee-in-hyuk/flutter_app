// import 'package:flutter/material.dart';
// import 'package:flutter_app/src/home.dart';
// import 'package:flutter_app/src/provider/count_provider.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//     // runApp(ChangeNotifierProvider(
//     //   create: (BuildContext context) => CountProvider(),
//     //   child: MyApp(),
//     // ),
//     // ); // 앱 run해달라는 문구(const 뒤에 앱의 메인페이지 입력)
//   runApp( MyApp());
//   }
//   // 'stless' 입력하면 자동으로 위젯클래스 생성
//   // class 뒤에 앱 메인페이지명 작성하고 아랫줄 const뒤에도 작성하면 메인페이지세팅완성
//   class MyApp extends StatelessWidget {
//     // const MyApp({Key? key}) : super(key: key);
//     @override
//     Widget build(BuildContext context) {
//
//       return MaterialApp( // 여기 home 안에 넣고 싶은 위젯 선택해서 넣으면 됨
//
//         home:
//         // Text('안녕'), // 1. text를 넣고 싶으면 Text()
//         // Icon(Icons.shop)// 2. 아이콘을 넣을 땐 Icon()
//         // Image.asset('IU_main.png') // 3. 이미지 넣을 땐 Image.asset('경로')
//         // 이미지 보관용 assets폴더 만들고 그 안에 이미지 넣음
//         // pubspec.yaml파일에 assets 경로지정을 따로 해주는게 맞아서 세팅함.
//         // Center( // 내 자식 위젯의 기준점을 중앙으로 설정해주는 Center()
//           // 그 자식 위젯은 'child: 위젯명'으로 작성
//           // <div>
//           //   <div>안녕</div>
//           // </div>
//           // vsc에서 쓰던 위의 방법이 '위젯(child:위젯())'이렇게 변형됐다고 보면 됨.
//           //   child:Container( width: 50, height: 50, color: Colors.blue,),
//           // 4. 네모박스 넣을 땐 Container(스타일명:값)
//           // Flutter의 사이즈 단위는 LP이고, 50LP = 1.2cm
//         // )
//
//         // Scaffold( // 상중하로 나눠주는 Scaffold()위젯
//         //   // appBar: AppBar(), // 상단에 들어갈 위젯
//         //   // body: Container(), // 중단 위젯
//         //   // bottomNavigationBar: BottomAppBar( child: Text('하단'),), // 하단 위젯
//         //
//         //   // 여러 위젯 가로로 배치하는 법
//         //   // Row( children:[]) - analysis_options.yaml에서
//         //   // prefer_const_literals_to_create_immutables : false << 이거 추가함
//         //   // 세로로 배치는 Column
//         //   body: Row(
//         //     // 요소들 정렬하는 방법 - CSS의 flex와 매우 유사
//         //     // 혹시나 뭘 써야 되는지 까먹었으면 Ctrl+Space
//         //     mainAxisAlignment: MainAxisAlignment.spaceEvenly, // row의 가로정렬
//         //     // crossAxisAlignment: CrossAxisAlignment.center, // row의 세로정렬
//         //     children: [
//         //       Icon(Icons.star),
//         //       Icon(Icons.shop),
//         //       Icon(Icons.stadium),
//         //     ],
//         //   )
//         // )
//         // 하나의 Provider 사용을 위한 선언
//         ChangeNotifierProvider(
//           create: (BuildContext context) => CountProvider(),
//           child: Home(),
//         ),
//
//         // 다중 Provider 사용을 위한 선언
//         // MultiProvider(
//         //   providers: [
//         //     ChangeNotifierProvider(
//         //         create: (BuildContext context) => CounterProvider())
//         //   ],
//         //   child: Home(),
//         // ),
//       );
//     }
//   }

import 'package:flutter/material.dart';
import 'package:flutter_app/src/home.dart';
import 'package:flutter_app/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:
      // 하나의 Provider 사용을 위한 선언
      ChangeNotifierProvider(
        create: (BuildContext context) => CountProvider(),
        child: Home(),
      ),

    );
  }
}