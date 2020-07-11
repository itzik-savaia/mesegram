import 'package:dio/dio.dart';

class AccountApi {
  Future<List> getAccount() async {
    var response =
        await Dio().get("http://127.0.0.1:8000/admin/account/useraccount/");
    return response.data;
  }
}
