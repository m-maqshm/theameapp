import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'core/thems/ligteTheam.dart';
import 'helper/roate_maneger.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      initialRoute: '/splash',
     theme: aapligetThem,
      onGenerateRoute: RoutManger.approute,
    );
  }
}
