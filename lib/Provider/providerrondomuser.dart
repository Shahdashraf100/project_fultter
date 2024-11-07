import 'package:flutter/cupertino.dart';
import '../Model/RondomuserModel.dart';
import '../Servises/randomuserservises.dart';
class rondomuserprovide extends ChangeNotifier{
  Rondomusermodel?romndomusermodel;

  Future <void>featchuserrondom()async{
    romndomusermodel=await rondomuserservises.getusers();//use in screen romndomusermodel
    notifyListeners();
  }
}