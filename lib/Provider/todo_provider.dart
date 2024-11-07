import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/todolist_model.dart';
import '../Servises/todoservises.dart';
class todoprovider extends ChangeNotifier{
  todomodel?todomode;
  Future<void>featchdata()async {
    todomode = await todoserves.gettodo();
    notifyListeners();
  }

  Future<void>postgeatc(String Task)async{
   await todoserves.posttodo(todo:Task);
   todomode?.data.add(
     {
     "todos":Task,
       "completed":"false",
       "userId":1
     }
   );
   todomode?.total +=1;
         notifyListeners();
   }
}
