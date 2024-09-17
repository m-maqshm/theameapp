import 'package:flutter/material.dart';
import 'package:theam/core/models/prodect.dart';

class Tabprodectscrean extends StatefulWidget {
   Tabprodectscrean({super.key, this.prodect});
  List<Prodects>? prodect;

  @override
  State<Tabprodectscrean> createState() => _TabprodectscreanState();
}

class _TabprodectscreanState extends State<Tabprodectscrean> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.prodect!.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width:  300,
                height:300,decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("${widget.prodect![index].image}"))
              ),),
            ),
            Expanded(
              flex: 3,
              child: ListTile(title: Text(" title : ${widget.prodect![index].title} ")
                ,leading: CircleAvatar(child: Center(child: Text('${widget.prodect![index].price}',style: TextStyle(fontSize: 12),))),),
            )
          ],
        );

      },
    );
  }
}
