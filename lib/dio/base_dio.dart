
import 'package:dio/dio.dart';

class BaseDio {
 // String apiKey = 'test_536734be427270e9e2f61ea013c915573df5f421263878eb1ea49dcf5dfa0616efe8d04e6d233bd35cf2fabdeb93fb0d';

  var options = BaseOptions(
    baseUrl: 'https://open.api.nexon.com',
    connectTimeout: Duration(milliseconds: 20000),
    receiveTimeout: Duration(milliseconds: 10000),
    headers: {
      "Accept-Language": "ko-KR",
      'x-nxopen-api-key':'test_536734be427270e9e2f61ea013c915573df5f421263878eb1ea49dcf5dfa0616efe8d04e6d233bd35cf2fabdeb93fb0d',
    },
    contentType: 'application/json; charset=utf-8',
    responseType: ResponseType.json,
  );
}



