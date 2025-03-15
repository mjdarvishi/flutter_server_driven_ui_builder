// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RowSchemaDto _$RowSchemaDtoFromJson(Map<String, dynamic> json) => RowSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      (json['children'] as List<dynamic>)
          .map((e) => SchemaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RowSchemaDtoToJson(RowSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'children': instance.children,
    };
