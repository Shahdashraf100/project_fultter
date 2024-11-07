import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../Model/todolist_model.dart';

class todoserves{
   static Dio dio=Dio();
   static Future<todomodel> gettodo()async{
     try{
       const String url="https://dummyjson.com/todos/user/1";
       Response resonce=await dio.get(url);
       if(resonce.statusCode==200){
         return todomodel.fromjson (resonce.data);
       }else{
         throw Exception("error");
       }
     }catch(d){
       throw Exception("ss");
     }

    }
  static Map dataa={'todos':" ","completed":"false",'userId':1};
    static Future<void>posttodo({required String todo})async{
     try{
       dataa['todo']=todo;
       const String Url='https://dummyjson.com/todos/add';
       Response resonce=await dio.post(Url,data: dataa);
       if(resonce.statusCode==201){
         print("post_succ");
       }else{
         throw Exception("error post");
       }
     }catch(u){
       throw Exception("error");
     }

    }
}