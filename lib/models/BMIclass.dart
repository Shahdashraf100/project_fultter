import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class Bmidata extends ChangeNotifier{
  int age=0;
  int wight=0;
  double hight=120;
  bool channng=true;
  String selectedGender = '';
  int result=1;

double calculateBmi(){
  return wight*hight;
}
  void selectGender(String gender) {
    selectedGender = gender;
    notifyListeners();
  }
    void incresedage(){
   age++;
  notifyListeners();
}
  void decresdage(){

    if(age!=0){
      age--;
    }else {
      age;
    }
    notifyListeners();

  }
  void incresdewight(){
    wight++;
    notifyListeners();

  }
  void decresedwight()
  {
    if(wight!=0){
      wight--;
    }else {
      wight;
    }
    notifyListeners();

  }

  void conehight( double newhight){
    hight=newhight;
    notifyListeners();
  }

  }