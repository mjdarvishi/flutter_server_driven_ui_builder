// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageSchemaDto _$ImageSchemaDtoFromJson(Map<String, dynamic> json) =>
    ImageSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      json['imageUrl'] as String,
      (json['height'] as num?)?.toDouble(),
      (json['width'] as num?)?.toDouble(),
      json['errorWidget'] == null
          ? null
          : SchemaDto.fromJson(json['errorWidget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageSchemaDtoToJson(ImageSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'imageUrl': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
      'errorWidget': instance.errorWidget,
    };
