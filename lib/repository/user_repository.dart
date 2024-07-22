
import 'package:dio/dio.dart';
import 'package:onlyfconline/dio/base_dio.dart';

class UserRepository{
  final dio =Dio(BaseDio().options);

  Future<void> getUserUid(String nickname) async{
    Response response = await dio.get('/fconline/v1/id?nickname=$nickname');
    print(response.data);
  }
}