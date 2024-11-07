
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class visa extends ChangeNotifier {
 bool isshow=true;
 void funchange(){
   isshow =!isshow;
   notifyListeners();
 }
}