// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormSchemaDto _$FormSchemaDtoFromJson(Map<String, dynamic> json) =>
    FormSchemaDto(
      json['type'] as String,
      (json['children'] as List<dynamic>)
          .map((e) => TextFieldSchemaDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['key'] as String,
    );

Map<String, dynamic> _$FormSchemaDtoToJson(FormSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'children': instance.children,
    };
