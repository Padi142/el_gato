import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'status_model.g.dart';

@JsonSerializable()
class StatusModel extends Equatable {
  final int mood;
  final int hunger;
  final String emotion;
  final int emotionIndex;

  const StatusModel({
    required this.mood,
    required this.hunger,
    required this.emotion,
    required this.emotionIndex,
  });

  @override
  List<Object?> get props => [
        mood,
        hunger,
        emotion,
        emotionIndex,
      ];

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$StatusModelToJson(this);
}
