// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaffold.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScaffoldSchemaDto _$ScaffoldSchemaDtoFromJson(Map<String, dynamic> json) =>
    ScaffoldSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      SchemaDto.fromJson(json['body'] as Map<String, dynamic>),
      json['bgColor'] as String?,
    );

Map<String, dynamic> _$ScaffoldSchemaDtoToJson(ScaffoldSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'body': instance.body,
      'bgColor': instance.bgColor,
    };
