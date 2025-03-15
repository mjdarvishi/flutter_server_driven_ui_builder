// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IconSchemaDto _$IconSchemaDtoFromJson(Map<String, dynamic> json) =>
    IconSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      (json['iconPoint'] as num).toInt(),
      json['color'] as String?,
      (json['size'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IconSchemaDtoToJson(IconSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'iconPoint': instance.iconPoint,
      'size': instance.size,
      'color': instance.color,
    };
