import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/providerrondomuser.dart';
import '../widgets/coustemwidgetrondomuser.dart';

class userrondom extends StatelessWidget {
  userrondom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rondom_User"),centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Consumer(
        builder:
            (BuildContext context, rondomuserprovide provider, Widget? child) {
          final rondom=provider.romndomusermodel;
          if(rondom==null){
            provider.featchuserrondom();
            return Center(
              child: CircularProgressIndicator(),);
          }else{
            return ListView.separated(
                itemCount:rondom.result.length,

              itemBuilder: (context, index) {
                final res=rondom.result;
              return userron(
                fullname:res[index]["Name"],
                Email: res[index]["Email"],

                image: res[index]["image"],

              );
              }, separatorBuilder:(context, index) => const SizedBox(height: 20,),
            );
          }
          },
      ),
    );
  }
}
