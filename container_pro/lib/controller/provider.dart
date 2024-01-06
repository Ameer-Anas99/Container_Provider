import 'package:flutter/material.dart';

class ContainerProvider extends ChangeNotifier {
  double currentsize = 50;

  void add() {
    currentsize = currentsize * 2;
    notifyListeners();
  }
}
