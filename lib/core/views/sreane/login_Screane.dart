import 'package:flutter/material.dart';
import 'package:theam/core/views/compons/rounded_container.dart';

import '../../models/user.dart';
import '../../viewsmodels/uservm.dart';
import '../compons/app_text_form.dart';
import '../compons/button_rounded_container.dart';
import '../compons/vertical_space.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UsersVm uvm = UsersVm();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundedContainer(
              margin: EdgeInsets.symmetric(horizontal: 20),
              radius: 20,
              child: AppTextForm(
                controller: usernameController,
                hint: "userName",
                label: "Enter your username...",
              )),
          VerticalSpace(),
          RoundedContainer(
              margin: EdgeInsets.symmetric(horizontal: 20),
              radius: 20,
              child: AppTextForm(
                controller: passwordController,
                hint: "password",
                label: "Enter your password...",
              )),
          VerticalSpace(),
          ButtonRoundedContainer(
              margin: EdgeInsets.all(20),
              width: 100,
              height: 50,
              color: Colors.redAccent,
              onTap: () {
                User u = User(
                    username: usernameController.text,
                    password: passwordController.text);
                uvm.login(u).then((x){
                  Navigator.pop(context);
                  if(x!=null)
                    Navigator.pushReplacementNamed(context, '/prodec');
                  else
                    showDialog(context: context, builder: (ctx)=>AlertDialog(content: Text("incorrect username or password"),));
                });
                showModalBottomSheet(context: context, builder: (ctx)=>Container(
                  height: 300,
                  child: Center(child: CircularProgressIndicator(),),
                ));

              },
              text: "Login")
        ],
      ),
    );
  }
}
