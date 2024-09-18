import 'package:dio/dio.dart';

import '../../helper/http_helper.dart';
import '../../helper/storg_helper.dart';
import '../constans/http_url.dart';
import '../models/user.dart';
class UsersVm{
  Future<User?> login(User user)async{
    try{
      HttpHelper http=HttpHelper.instance;


      Response res=await http.postRequest(url: HttpUrls.LOGIN_URL, data:user.authData() );
      if(res.statusCode==200)
      {
        User u=User.fromJson(res.data);
        saveUser(u);
        return u;
      }
      return null;
    }
    catch(e,s){
      print("exception is ${e}");
    }
  }

  saveUser(User u){

    StorageHelper storageHelper=StorageHelper.instance;
    storageHelper.writeKey("f_name", u.firstName!);
    storageHelper.writeKey("l_name", u.lastName!);
    storageHelper.writeKey("image", u.image!);
    storageHelper.writeKey("token", u.token!);
    storageHelper.writeKey("email", u.email!);
  }
}