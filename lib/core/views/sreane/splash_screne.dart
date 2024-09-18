

import 'package:flutter/material.dart';

import '../../../helper/storg_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );

  }

  checkUser(){
    Future.delayed(Duration(seconds: 3),(){
      StorageHelper sHelper=StorageHelper.instance;
      sHelper.readKey("token")==null?
      Navigator.pushNamedAndRemoveUntil(context, "/login",(route)=>false)
          :
      Navigator.pushNamedAndRemoveUntil(context, "/prodec",(route)=>false);
    });
  }
}
