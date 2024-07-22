import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:onlyfconline/dio/base_dio.dart';
import 'package:onlyfconline/model/seasonId_model.dart';

class MetadataRepository{
  final dio =Dio(BaseDio().options);

  Future<List<SeasonIdModel>> getSeasonId() async{
    List<SeasonIdModel> seasonIdModelList = [];
    Response response = await dio.get('/static/fconline/meta/seasonid.json');
    List<dynamic> seasonIdJsonList = jsonDecode(response.data);
    for(int i=0;i<seasonIdJsonList.length;i++){
      seasonIdModelList.add(SeasonIdModel.fromJson(seasonIdJsonList[i]));
    }
    return seasonIdModelList;
  }
}