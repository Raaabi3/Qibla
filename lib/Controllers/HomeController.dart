import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  int _index = 0; 

  int get index => _index; 

  set setindex(int newIndex) {
    _index = newIndex; 
    notifyListeners(); 
  }
}
