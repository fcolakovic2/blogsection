import 'package:flutter/material.dart';

class PageIndexProvider extends ChangeNotifier {
  int _pageIndex = 0;
  bool _related = false;

  int get pageIndex => _pageIndex;
  bool get related => _related;

  void changeIndex(value) {
    _pageIndex = value;
    notifyListeners();
  }

  void changeUpdateStatus(value) {
    _related = value;
    notifyListeners();
  }
}
