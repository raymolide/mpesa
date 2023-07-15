import 'package:flutter/widgets.dart';

class NavyState extends ChangeNotifier {
  final controller = PageController(initialPage: 0);
  int index = 0;

  void jumpPage(int index) {
    this.index = index;
    notifyListeners();
  }
}
