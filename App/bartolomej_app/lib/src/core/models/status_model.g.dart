// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) => StatusModel(
      mood: json['mood'] as int,
      hunger: json['hunger'] as int,
      emotion: json['emotion'] as String,
      emotionIndex: json['emotionIndex'] as int,
    );

Map<String, dynamic> _$StatusModelToJson(StatusModel instance) =>
    <String, dynamic>{
      'mood': instance.mood,
      'hunger': instance.hunger,
      'emotion': instance.emotion,
      'emotionIndex': instance.emotionIndex,
    };
