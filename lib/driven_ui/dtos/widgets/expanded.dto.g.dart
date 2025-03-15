// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedSchemaDto _$ExpandedSchemaDtoFromJson(Map<String, dynamic> json) =>
    ExpandedSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      SchemaDto.fromJson(json['child'] as Map<String, dynamic>),
      (json['flex'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$ExpandedSchemaDtoToJson(ExpandedSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'child': instance.child,
      'flex': instance.flex,
    };
