import 'package:flutter/material.dart';
import 'package:theam/core/models/prodect.dart';
import 'package:theam/core/viewsmodels/prodectVM.dart';

class Prodectscreane extends StatefulWidget {
  List<Prodects>? prodect ;
   Prodectscreane({super.key , required this.prodect});

  @override
  State<Prodectscreane> createState() => _ProdectscreaneState();
}

class _ProdectscreaneState extends State<Prodectscreane> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: widget.prodect!.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width:  300,
                height:300,decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("${widget.prodect![index].image}"))
              ),),
              ListTile(title: Text(" title : ${widget.prodect![index].title}")
                ,leading: CircleAvatar(child: Center(child: Text('${widget.prodect![index].price}',style: TextStyle(fontSize: 12),))),)
            ],
          );

        },
    );
  }
}
