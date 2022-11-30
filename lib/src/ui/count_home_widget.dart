import 'package:flutter/material.dart';
import 'package:flutter_app/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  이렇게 직접 접근해서 받아오는 경우 현 위젯 전체가 리로드 되는 현상이 발생한다.
    //  가벼운 위젯일 경우 바로 사용해도 무방하지만
    return Center(
      child: Text(
        Provider.of<CountProvider>(context).count.toString(),
        style: TextStyle(fontSize: 80),
      ),
    );

    //  Consumer를 활용하는 경우 builder 부분만 호출되기 때문에 현 위젯이 리로드 되지 않는다.
    //  여러 효과나 연산이 많이 있는 위젯일 경우는 Consumer를 사용하는 것이 좋을 것으로 보인다.
    // return Center(
    //   child: Consumer<CounterProvider>(builder: (context, provider, child) {
    //     return Text(
    //       provider.count.toString(),
    //     );
    //   }),
    // );
  }
}
