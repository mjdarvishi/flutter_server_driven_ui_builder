// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkSchemaDto _$LinkSchemaDtoFromJson(Map<String, dynamic> json) =>
    LinkSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      json['value'] as String,
      json['style'] == null
          ? null
          : LinkStyleDto.fromJson(json['style'] as Map<String, dynamic>),
      json['url'] as String,
    );

Map<String, dynamic> _$LinkSchemaDtoToJson(LinkSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'style': instance.style,
      'value': instance.value,
      'url': instance.url,
    };

LinkStyleDto _$LinkStyleDtoFromJson(Map<String, dynamic> json) => LinkStyleDto(
      json['textColor'] as String?,
      json['underline'] as bool,
      (json['fontSize'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LinkStyleDtoToJson(LinkStyleDto instance) =>
    <String, dynamic>{
      'textColor': instance.textColor,
      'underline': instance.underline,
      'fontSize': instance.fontSize,
    };
