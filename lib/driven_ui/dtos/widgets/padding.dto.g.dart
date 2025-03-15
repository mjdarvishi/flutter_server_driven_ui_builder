// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'padding.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaddingSchemaDto _$PaddingSchemaDtoFromJson(Map<String, dynamic> json) =>
    PaddingSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      SchemaDto.fromJson(json['child'] as Map<String, dynamic>),
      (json['padding-bottom'] as num?)?.toDouble() ?? 0,
      (json['padding-left'] as num?)?.toDouble() ?? 0,
      (json['padding-right'] as num?)?.toDouble() ?? 0,
      (json['padding-top'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$PaddingSchemaDtoToJson(PaddingSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'child': instance.child,
      'padding-top': instance.paddingTop,
      'padding-right': instance.paddingRight,
      'padding-bottom': instance.paddingBottom,
      'padding-left': instance.paddingLeft,
    };
