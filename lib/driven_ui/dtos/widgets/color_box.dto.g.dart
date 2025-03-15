// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_box.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorBoxSchemaDto _$ColorBoxSchemaDtoFromJson(Map<String, dynamic> json) =>
    ColorBoxSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      SchemaDto.fromJson(json['child'] as Map<String, dynamic>),
      json['color'] as String,
    );

Map<String, dynamic> _$ColorBoxSchemaDtoToJson(ColorBoxSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'child': instance.child,
      'color': instance.color,
    };
