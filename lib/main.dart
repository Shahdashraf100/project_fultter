import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/prayer_time_provider.dart';
import 'Provider/provider_news.dart';
import 'Provider/providerrondomuser.dart';
import 'Provider/todo_provider.dart';
import 'Screens/Prayar_time_screens.dart';
import 'Screens/rondomuserscrens.dart';
import 'Screens/scrennews.dart';
import 'Screens/todopagefrist.dart';
void main(){
  runApp( MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ChangeNotifierProvider(create: (context) =>providernews(

      ),
        child:newsscreen(),
      ),
    );
  }
}
