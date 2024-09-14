import 'package:flutter/material.dart';
import 'package:theam/core/viewsmodels/prodectVM.dart';

class Prodectscreane extends StatefulWidget {
  const Prodectscreane({super.key});

  @override
  State<Prodectscreane> createState() => _ProdectscreaneState();
}

class _ProdectscreaneState extends State<Prodectscreane> {
  @override
  Widget build(BuildContext context) {
    ProdectVM pvn = ProdectVM();
    return Scaffold(
      appBar: AppBar( title: Text("all prodects"),),
      body: FutureBuilder( future:  pvn.getProdects(),
        builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.done)
          {return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                      Container(
                        width:  300,
                        height:300,decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("${snapshot.data![index].image}"))
                  ),),
                  ListTile(title: Text(" title : ${snapshot.data?[index].title}") 
                    ,leading: CircleAvatar(child: Center(child: Text('${snapshot.data![index].price}',style: TextStyle(fontSize: 12),))),)
                ],
              );

            },);}
         else {
            return Text("data");}



      },),
    );
  }
}
