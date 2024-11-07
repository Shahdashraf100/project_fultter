import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../Provider/provider_news.dart';
import '../widgets/newswidget.dart';
class newsscreen extends StatelessWidget {
   newsscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Consumer(builder: (BuildContext context,providernews provider, Widget? child)
      {
        final news=provider.newmodel;
        if(news==null){
          provider.featchdata();

          return Center(child: CircularProgressIndicator(),);

        }else{
          return ListView.separated(
              itemBuilder: (context, index) {
                final newsdata=news.data;
                return widgetnews(
                  imgae:newsdata[index]["Image"],
                  Title:newsdata[index]["Title"],
                  Des: newsdata[index]["Descrption"],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 5,),
              itemCount:news.data.length
          );
        }

      },) ,
    );
  }
}
