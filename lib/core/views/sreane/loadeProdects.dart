import 'package:flutter/material.dart';
import 'package:theam/core/views/sreane/prodectScreane.dart';
import 'package:theam/core/views/sreane/tabProdectScrean.dart';

import '../../viewsmodels/prodectVM.dart';

class LaodeProdects extends StatefulWidget {
  const LaodeProdects({super.key});

  @override
  State<LaodeProdects> createState() => _LaodeProdectsState();

  void initState() {
    // super.initState();
  }
}

class _LaodeProdectsState extends State<LaodeProdects> {
  @override
  ProdectVM pvn = ProdectVM();

  int tabScreane = 600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Prdects'),
        ),
        body: FutureBuilder(
          future: pvn.getProdects(),
          builder: (context, snapshot) {
            return LayoutBuilder(
              builder: (context, constraints) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (constraints.maxWidth <= tabScreane)
                    return Prodectscreane(prodect: snapshot.data);
                  return Tabprodectscrean(prodect: snapshot.data);
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            );
          },
        ));
  }
}
