import 'dart:convert';
import 'package:drive2go/Repository/Modelclass/SigninModel.dart';
import 'package:drive2go/Repository/Modelclass/SignupModel.dart';
import 'package:http/http.dart';
import 'api_client.dart';

class UserApi {
  ApiClient apiClient = ApiClient();

  Future<SignupModel> getsignup(String name,String email,String phone,String password) async {
    String trendingpath = 'http://45.159.221.50:8868/api/signup';
    var body = {
      "fullName": name,
      "email": email,
      "phone": phone,
      "password": password,
    };

    print("details"+body.toString());
    Response response = await apiClient.invokeAPI(trendingpath, 'POST',jsonEncode(body),);

    return SignupModel.fromJson(jsonDecode(response.body));
  }
  Future<SigninModel> getsignin(String email,String password) async {
    String trendingpath =
        'http://45.159.221.50:8868/api/signin';
    var body = {
      "email": email,
      "password": password
    }
    ;
    Response response = await apiClient.invokeAPI(trendingpath, 'POST',jsonEncode(body),);

    return SigninModel.fromJson(jsonDecode(response.body));
  }
}
