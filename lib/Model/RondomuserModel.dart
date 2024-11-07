import 'package:flutter/foundation.dart';
import 'package:secound/models/trygridview.dart';

class Rondomusermodel{
  List<dynamic>result;
  Rondomusermodel({required this .result});

  factory Rondomusermodel.fromjson(Map<String,dynamic>json){
    List<dynamic>fulldata;
    fulldata=json["results"].map(
            (user){
          return {
            "Name":user["name"]["first"]+ " " +user["name"]["last"],
            "Email":user["email"],
            "image":user["picture"]["thumbnail"]

          };
        },
    ).toList();
    return Rondomusermodel(result: fulldata);
  }
}