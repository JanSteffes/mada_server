// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_management.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) {
  return HelloResponse(
    message: json['message'] as String?,
    randomNumber: json['random_number'] as int?,
  );
}

Map<String, dynamic> _$HelloResponseToJson(HelloResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'random_number': instance.randomNumber,
    };
