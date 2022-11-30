import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

void main() => runApp(MyApp());

// StatelessWidget - state를 안 쓰는 위젯을 만들 때.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: Textbtn_setState(),
    );
  }
}

class Textbtn_setState extends StatefulWidget {
  const Textbtn_setState({Key? key}) : super(key: key);

  @override
  State<Textbtn_setState> createState() => _Textbtn_setStateState();
}

class _Textbtn_setStateState extends State<Textbtn_setState> {

  final List<String> _textList = ['바뀔 텍스트','직장/직무','취업/진로'];
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(50),
      //   child: AppBar(
      //     // leading: IconButton(onPressed: null, icon: SvgPicture.asset('assets/icons/back_icon.svg', color: Color(0xff000000),)),
      //     // title: TextButton(
      //     //   onPressed: () {
      //     //     YYDialog().build(context)
      //     //     // ..width = 300
      //     //     // ..height = 300
      //     //       ..gravity = Gravity.bottom //  Dialog 위치
      //     //       ..barrierColor = Colors.black.withOpacity(0.7)  //  뒷배경 밝기 조절
      //     //       ..backgroundColor = Colors.transparent  //  자식 위젯인 컨테이너에 테두리 둥글게 하려고 부모위젯 다이얼로그를 투명배경으로 변경
      //     //     // ..backgroundColor = Colors.white
      //     //       ..widget(
      //     //         Container(
      //     //           width: 300,
      //     //           height: 400,  //  키워드 버튼이 많아 지면 높이도 조절해야 될 듯.
      //     //           padding: EdgeInsets.zero,
      //     //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffffffff)),
      //     //           child: Column(
      //     //             children: [
      //     //               Container(
      //     //                 margin: EdgeInsets.only(top: 15),
      //     //                 child: Row(
      //     //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //                   children: [
      //     //                     //  닫기 버튼
      //     //                     Container(
      //     //                       width: 15,
      //     //                       color: Colors.transparent,
      //     //                       alignment: Alignment.centerLeft,
      //     //                       margin: EdgeInsets.only(bottom: 3, left: 20),
      //     //                       child: IconButton(
      //     //                         padding: EdgeInsets.all(0),
      //     //                         constraints: BoxConstraints(),
      //     //                         onPressed: () => Navigator.of(context, rootNavigator: true).pop(),  //  dialog 닫기 버튼 수정
      //     //                         icon: SvgPicture.asset('assets/icons/close-icon.svg', width: 15, height: 15, color: Color(0xff757474),),
      //     //                       ),
      //     //                     ),
      //     //                     //  저장하기 버튼
      //     //                     Container(
      //     //                       width: 70,
      //     //                       height: 33,
      //     //                       margin: EdgeInsets.only(right: 20),
      //     //                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(13), border: Border.all(width: 1, color: Color(0xff757474))),
      //     //                       child: TextButton(
      //     //                         style: TextButton.styleFrom(  //  텍스트버튼 기본 패딩값 없애기
      //     //                             minimumSize: Size.zero,
      //     //                             padding: EdgeInsets.zero,
      //     //                             tapTargetSize: MaterialTapTargetSize.shrinkWrap
      //     //                         ),
      //     //                         onPressed: (){
      //     //
      //     //                         },
      //     //                         child: Text('저장하기', style: TextStyle(fontSize: 13, fontFamily: 'NanumSquareR', letterSpacing: -0.65, color: Color(0xff757474)),),
      //     //                       ),
      //     //                     ),
      //     //                   ],
      //     //                 ),
      //     //               ),
      //     //               Container(
      //     //                 margin: EdgeInsets.only(top: 10),
      //     //                 padding: EdgeInsets.all(20),
      //     //                 child:
      //     //                 Row(
      //     //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     //                   crossAxisAlignment: CrossAxisAlignment.start,
      //     //                   children: [
      //     //                     Column(
      //     //                       crossAxisAlignment: CrossAxisAlignment.start,
      //     //                       children: [
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('직장/직무', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('취업/진로', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('금전/사업', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('가족관계', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('자아/성격', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('대인관계', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('자녀문제', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('정신건강 문제', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                       ],
      //     //                     ),
      //     //                     Column(
      //     //                       crossAxisAlignment: CrossAxisAlignment.start,
      //     //                       children: [
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('결혼생활', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('이별/사별', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('이혼/재혼', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('학업/고시', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('신체건강', style: TextStyle(fontFamily: 'NanumSquareB', fontSize: 14, letterSpacing: -0.7, color: Color(0xff2e2e2d)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('외모/연애', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('성추행/성정체성', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                         TextButton(
      //     //                             onPressed: null,
      //     //                             style: TextButton.styleFrom(
      //     //                               padding: EdgeInsets.zero,
      //     //                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //     //                               minimumSize: Size(20, 30),
      //     //                             ),
      //     //                             child: Text('군대', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
      //     //                         ),
      //     //                       ],
      //     //                     ),
      //     //                   ],
      //     //                 ),
      //     //               ),
      //     //             ],
      //     //           ),
      //     //         ),
      //     //       )
      //     //       ..show();
      //     //   },
      //     //   child: Row(
      //     //     mainAxisAlignment: MainAxisAlignment.center,
      //     //     children: [
      //     //       Text('신체건강', style: TextStyle(fontSize: 20, fontFamily: 'NanumSquareEB', fontWeight: FontWeight.w600, color: Color(0xff363636))),
      //     //       Container(
      //     //         margin: EdgeInsets.only(left: 8),
      //     //         child: SvgPicture.asset('assets/icons/dropdown-icon.svg', width: 40, height: 20, color: Color(0xff757474),),
      //     //       )
      //     //     ],
      //     //   ),
      //     // ),
      //     centerTitle: true,
      //     backgroundColor: Colors.white,
      //     elevation: 0.0,
      //     actions: [
      //       Container(
      //           width: 25,
      //           padding: EdgeInsets.zero,
      //           margin: EdgeInsets.only(right: 15),
      //           constraints: BoxConstraints(),
      //           child: IconButton(onPressed: null, icon: SvgPicture.asset('assets/icons/news-icon.svg', width: 25,), padding: EdgeInsets.zero,)
      //       ),
      //     ],
      //   ),
      // ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
          child: AppBar(
            title: TextButton(
              onPressed: (){
                
              },
              child: Text('텍스트 변경'),
            ),
          )
      ),
      body: Center(
        child: Column(
          children: [
            Text(_textList[idx], style: TextStyle(fontSize: 30),),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: (){
                            setState(() {
                              idx = 1;
                            });
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size(20, 30),
                          ),
                          child: Text('직장/직무', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      ),
                      TextButton(
                          onPressed: (){
                            setState(() {
                              idx = 2;
                            });
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size(20, 30),
                          ),
                          child: Text('취업/진로', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      ),
                      // TextButton(
                      //     onPressed: null,
                      //     style: TextButton.styleFrom(
                      //       padding: EdgeInsets.zero,
                      //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      //       minimumSize: Size(20, 30),
                      //     ),
                      //     child: Text('금전/사업', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      // ),
                      // TextButton(
                      //     onPressed: null,
                      //     style: TextButton.styleFrom(
                      //       padding: EdgeInsets.zero,
                      //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      //       minimumSize: Size(20, 30),
                      //     ),
                      //     child: Text('가족관계', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      // ),
                      // TextButton(
                      //     onPressed: null,
                      //     style: TextButton.styleFrom(
                      //       padding: EdgeInsets.zero,
                      //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      //       minimumSize: Size(20, 30),
                      //     ),
                      //     child: Text('자아/성격', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      // ),
                      // TextButton(
                      //     onPressed: null,
                      //     style: TextButton.styleFrom(
                      //       padding: EdgeInsets.zero,
                      //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      //       minimumSize: Size(20, 30),
                      //     ),
                      //     child: Text('대인관계', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      // ),
                      // TextButton(
                      //     onPressed: null,
                      //     style: TextButton.styleFrom(
                      //       padding: EdgeInsets.zero,
                      //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      //       minimumSize: Size(20, 30),
                      //     ),
                      //     child: Text('자녀문제', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      // ),
                      // TextButton(
                      //     onPressed: null,
                      //     style: TextButton.styleFrom(
                      //       padding: EdgeInsets.zero,
                      //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      //       minimumSize: Size(20, 30),
                      //     ),
                      //     child: Text('정신건강 문제', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                      // ),
                    ],
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('결혼생활', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                  //     ),
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('이별/사별', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                  //     ),
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('이혼/재혼', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                  //     ),
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('학업/고시', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                  //     ),
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('신체건강', style: TextStyle(fontFamily: 'NanumSquareB', fontSize: 14, letterSpacing: -0.7, color: Color(0xff2e2e2d)),)
                  //     ),
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('외모/연애', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                  //     ),
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('성추행/성정체성', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                  //     ),
                  //     TextButton(
                  //         onPressed: null,
                  //         style: TextButton.styleFrom(
                  //           padding: EdgeInsets.zero,
                  //           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //           minimumSize: Size(20, 30),
                  //         ),
                  //         child: Text('군대', style: TextStyle(fontFamily: 'NanumSquareR', fontSize: 14, letterSpacing: -0.7, color: Color(0xff757474)),)
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
