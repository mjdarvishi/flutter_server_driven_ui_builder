// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScrollSchemaDto _$ScrollSchemaDtoFromJson(Map<String, dynamic> json) =>
    ScrollSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      SchemaDto.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScrollSchemaDtoToJson(ScrollSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'child': instance.child,
    };
