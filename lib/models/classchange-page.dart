
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
class Ofandon extends ChangeNotifier
{
  bool ison=true;
  void funchange(){
    ison=!ison;
    notifyListeners();
  }
}