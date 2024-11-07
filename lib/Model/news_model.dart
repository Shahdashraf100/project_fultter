class newsmodelapp{
  List<dynamic>data;
  newsmodelapp({required this.data});

  factory newsmodelapp.fromjson(Map<String,dynamic>json){
    List<dynamic>fulldata;
    fulldata=json['articles'].map(
        (user){
          return {
            "Title":user['title'],
            "Descrption":user['description'],
            "Image":user['urlToImage']
          };
        },
    ).toList();
    return newsmodelapp(data:fulldata);
  }
}