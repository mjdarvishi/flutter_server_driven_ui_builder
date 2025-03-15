// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColumnSchemaDto _$ColumnSchemaDtoFromJson(Map<String, dynamic> json) =>
    ColumnSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      (json['children'] as List<dynamic>)
          .map((e) => SchemaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ColumnSchemaDtoToJson(ColumnSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'children': instance.children,
    };
