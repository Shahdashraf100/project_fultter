import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secound/Provider/prayer_time_provider.dart';
import 'package:secound/widgets/paryer_time_cart.dart';
class PrayerTimeScreen extends StatelessWidget {
   PrayerTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prayer time',style: TextStyle(fontSize: 20,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Consumer<PrayerTimeprovider>(
        builder: (context, provider, child) {
          final prayerTimes = provider.prayertimes;
          if (prayerTimes == null) {
            provider.fetchPrayerTimes();
            return  Center(
                child: CircularProgressIndicator());
          }else {
            return ListView.separated(
              itemCount: prayerTimes.data.length,
              itemBuilder: (context, index) {
                final prayerName = prayerTimes.data.keys;
                final prayerTime = prayerTimes.data.values;
                return Cardprayer(
                  nameprayer: prayerName.elementAt(index),
                  timeprayer: prayerTime.elementAt(index),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 17),
            );
          }
        },
      ),
    );
  }
}
