import 'package:flutter/material.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            
            // title: ,
            // backgroundColor: Colors.cyan
        ),
        body: Container(
          width: double.infinity,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home Srean",style: Theme.of(context).textTheme.bodyLarge,),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {

              }, child: Text('sin'))
            ],
          ),
        ),
      ),
    );
  }
}
