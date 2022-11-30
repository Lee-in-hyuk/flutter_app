import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0; // 상태
  int get count => _count;

  add() {
    _count ++;  // 상태 변경
    notifyListeners();  // 상태 변경된 것을 알림
  }

  remove() {
    _count --;
    notifyListeners();
  }
}