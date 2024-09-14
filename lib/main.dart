import 'package:flutter/material.dart';

import 'core/thems/ligteTheam.dart';
import 'helper/roate_maneger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      initialRoute: '/prodec',
     theme: aapligetThem,
      onGenerateRoute: RoutManger.approute,
    );
  }
}
