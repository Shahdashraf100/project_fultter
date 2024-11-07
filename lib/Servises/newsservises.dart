import 'package:dio/dio.dart';

import '../Model/news_model.dart';

class servsesnews{
 static Dio dio=Dio();
 static Future<newsmodelapp>getnew()async{
   try
   {
     var url="https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf";
     Response responce=await dio.get(url);
     if(responce.statusCode==200){
       return newsmodelapp.fromjson(responce.data);
     }else{
       throw Exception("error");
     }
   }catch(e){
     throw Exception("error");
   }
 }
}