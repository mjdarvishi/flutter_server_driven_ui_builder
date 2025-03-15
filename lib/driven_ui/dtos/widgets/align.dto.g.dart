// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'align.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlignSchemaDto _$AlignSchemaDtoFromJson(Map<String, dynamic> json) =>
    AlignSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      SchemaDto.fromJson(json['child'] as Map<String, dynamic>),
      $enumDecode(_$SchemaAlignmentEnumMap, json['alignment']),
    );

Map<String, dynamic> _$AlignSchemaDtoToJson(AlignSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'child': instance.child,
      'alignment': _$SchemaAlignmentEnumMap[instance.alignment]!,
    };

const _$SchemaAlignmentEnumMap = {
  SchemaAlignment.topLeft: 'topLeft',
  SchemaAlignment.topCenter: 'topCenter',
  SchemaAlignment.topRight: 'topRight',
  SchemaAlignment.centerLeft: 'centerLeft',
  SchemaAlignment.center: 'center',
  SchemaAlignment.centerRight: 'centerRight',
  SchemaAlignment.bottomLeft: 'bottomLeft',
  SchemaAlignment.bottomCenter: 'bottomCenter',
  SchemaAlignment.bottomRight: 'bottomRight',
};
