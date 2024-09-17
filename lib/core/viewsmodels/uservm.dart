import 'package:dio/dio.dart';

import '../../helper/http_helper.dart';
import '../constans/http_url.dart';
import '../models/user.dart';

class UsersVm{
  Future<User?> login(User user)async{
    HttpHelper http=HttpHelper.instance;

    Response res=await http.postRequest(url: HttpUrls.LOGIN_URL, data:user.authData() );
    if(res.statusCode==200)
    {
      User u=User.fromJson(res.data);
      return u;
    }
    return null;
  }
}