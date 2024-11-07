import 'package:flutter/cupertino.dart';
import '../Model/prayar_timess_model.dart';
import '../Servises/prayer_time_serviese.dart';

class PrayerTimeprovider with ChangeNotifier{

  PrayerTimeModel?prayertimes;


  Future <void>fetchPrayerTimes()async{

    prayertimes=await PrayerTimeServises.GetPrayerTime();

    notifyListeners();
  }

}
