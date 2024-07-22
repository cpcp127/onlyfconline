// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasonId_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonIdModel _$SeasonIdModelFromJson(Map<String, dynamic> json) =>
    SeasonIdModel(
      seasonId: (json['seasonId'] as num).toInt(),
      className: json['className'] as String,
      seasonImg: json['seasonImg'] as String,
    );

Map<String, dynamic> _$SeasonIdModelToJson(SeasonIdModel instance) =>
    <String, dynamic>{
      'seasonId': instance.seasonId,
      'className': instance.className,
      'seasonImg': instance.seasonImg,
    };
