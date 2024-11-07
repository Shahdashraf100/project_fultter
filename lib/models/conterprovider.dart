import 'package:flutter/cupertino.dart';

class  Counterpr extends  ChangeNotifier{
  int num=0;
  void increased(){
    num++;
    notifyListeners();
  }
  void decresed(){
    num--;
    notifyListeners();
  }
}