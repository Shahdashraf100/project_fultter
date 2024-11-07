import 'package:dio/dio.dart';
import 'package:secound/Model/RondomuserModel.dart';

class rondomuserservises {
  static Dio dio = Dio();
  static Future<Rondomusermodel> getusers() async {
    try {
      const String Url = "https://randomuser.me/api/?results=50";
      var responce = await dio.get(Url);
      if (responce.statusCode == 200) {
        return Rondomusermodel.fromjson(responce.data);
      } else {
        throw Exception("dd");
      }
    } catch (e) {
      throw Exception("fd");
    }
  }
}
