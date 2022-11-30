import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'CheckBox List';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        unselectedWidgetColor: Colors.red //  선택 안 된 위젯의 색상을 빨간색으로.
      ),
      home: CheckBox(),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class CheckBoxState {
  final String title;
  bool value;

  CheckBoxState({
    required this.title,
    this.value = false,
  });
}

class _CheckBoxState extends State<CheckBox> {
  final notifications = [
    CheckBoxState(title: 'Colleagues'),
    CheckBoxState(title: 'Messages'),
    CheckBoxState(title: 'Groups'),
    CheckBoxState(title: 'Calls'),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          // 전체선택하는 체크박스도 영상 뒷부분에 있지만 그건 나중에 필요할 때 다시 보는걸로..
          ...notifications.map(buildSingleCheckbox).toList(),
        ],
      ),
    );
  }
  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading, //  체크박스를 왼쪽으로 위치 변경
    activeColor: Colors.red,  //  체크박스 선택 시 빨간색
    value: checkbox.value,
    title: Text(checkbox.title, style: TextStyle(fontSize: 20),),
    onChanged: (value) => setState(() => checkbox.value = value!),
  );
}
