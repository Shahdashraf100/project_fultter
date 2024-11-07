class todomodel{
  List<dynamic>data;
  int total;
  todomodel({required this.data,required this.total});

  factory todomodel.fromjson(Map<String,dynamic>json){
    return todomodel(
      data:json['todos'],total:json['total']
    );
  }
}