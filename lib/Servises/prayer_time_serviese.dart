import 'package:dio/dio.dart';

import '../Model/prayar_timess_model.dart';
 class PrayerTimeServises{
 static Dio dio=Dio();
static Future<PrayerTimeModel>GetPrayerTime()async {
  try {
    const String Url = "http://api.aladhan.com/v1/timingsByCity?country=egypt&city=cairo";
    var responce = await dio.get(Url);
    if (responce.statusCode == 200) {

      return PrayerTimeModel.fromJson(responce.data);

    } else {
      throw Exception("error");
    }
  } catch (e){
    throw Exception("fes");
  }
}
}