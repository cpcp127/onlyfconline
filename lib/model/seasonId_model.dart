import 'package:json_annotation/json_annotation.dart';

part 'seasonId_model.g.dart';

@JsonSerializable()
class SeasonIdModel {
  const SeasonIdModel(
      {required this.seasonId,
      required this.className,
      required this.seasonImg});

  final int seasonId;
  final String className;
  final String seasonImg;

  factory SeasonIdModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonIdModelFromJson(json);

  Map<dynamic, dynamic> toJson() => _$SeasonIdModelToJson(this);
}
