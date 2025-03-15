// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_box.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SizeBoxSchemaDto _$SizeBoxSchemaDtoFromJson(Map<String, dynamic> json) =>
    SizeBoxSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      (json['height'] as num?)?.toDouble(),
      (json['width'] as num?)?.toDouble(),
      json['child'] == null
          ? null
          : SchemaDto.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SizeBoxSchemaDtoToJson(SizeBoxSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'width': instance.width,
      'height': instance.height,
      'child': instance.child,
    };
