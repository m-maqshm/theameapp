import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theam/core/views/sreane/home_scrien.dart';
import 'package:theam/core/views/sreane/notFounePage.dart';

import '../core/views/sreane/prodectScreane.dart';

class RoutManger{
  static Route<dynamic>? approute(RouteSettings route){
    switch(route.name) {
      case
        '/home': return MaterialPageRoute(builder: (context) => HomeScrean(),);
      case
        '/prodec': return MaterialPageRoute(builder: (context) => Prodectscreane(),);
      default: return MaterialPageRoute(builder: (context) => NotFoundPage(),);
    }
  }
}