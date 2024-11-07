import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  String inputText = "";




  void Text(String text) {
    inputText = text;
    notifyListeners();
  }
}