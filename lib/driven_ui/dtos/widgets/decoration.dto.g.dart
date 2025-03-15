// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoration.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecorationSchemaDto _$DecorationSchemaDtoFromJson(Map<String, dynamic> json) =>
    DecorationSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      SchemaDto.fromJson(json['child'] as Map<String, dynamic>),
      json['color'] as String?,
      (json['borderRadius'] as num?)?.toDouble(),
      json['shape'] as String? ?? 'rect',
      (json['borderWidth'] as num?)?.toDouble(),
      json['borderColor'] as String?,
    );

Map<String, dynamic> _$DecorationSchemaDtoToJson(
        DecorationSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'child': instance.child,
      'color': instance.color,
      'borderRadius': instance.borderRadius,
      'borderWidth': instance.borderWidth,
      'borderColor': instance.borderColor,
      'shape': instance.shape,
    };
