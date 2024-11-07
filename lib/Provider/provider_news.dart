import 'package:flutter/cupertino.dart';

import '../Model/news_model.dart';
import 'package:provider/provider.dart';

import '../Servises/newsservises.dart';
class providernews extends ChangeNotifier{
  newsmodelapp?newmodel;
  Future <void>featchdata()async{
    newmodel=await servsesnews.getnew();
    notifyListeners();
  }

}