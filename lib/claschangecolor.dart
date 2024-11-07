import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class colorofpage extends ChangeNotifier{
  bool change=true;
  void chan(){
    change =!change;
    notifyListeners();
  }
}