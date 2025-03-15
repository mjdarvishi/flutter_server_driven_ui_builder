// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lable.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LableSchemaDto _$LableSchemaDtoFromJson(Map<String, dynamic> json) =>
    LableSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      json['value'] as String,
      json['textAlign'] as String?,
      mode:
          $enumDecodeNullable(_$LableModeEnumMap, json['mode']) ?? LableMode.h2,
    )..style = json['style'] == null
        ? null
        : LableStyleDto.fromJson(json['style'] as Map<String, dynamic>);

Map<String, dynamic> _$LableSchemaDtoToJson(LableSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'mode': _$LableModeEnumMap[instance.mode]!,
      'style': instance.style,
      'value': instance.value,
      'textAlign': instance.textAlign,
    };

const _$LableModeEnumMap = {
  LableMode.h1: 'h1',
  LableMode.h2: 'h2',
  LableMode.h3: 'h3',
  LableMode.h4: 'h4',
  LableMode.h5: 'h5',
  LableMode.h6: 'h6',
};

LableStyleDto _$LableStyleDtoFromJson(Map<String, dynamic> json) =>
    LableStyleDto(
      json['textColor'] as String?,
    );

Map<String, dynamic> _$LableStyleDtoToJson(LableStyleDto instance) =>
    <String, dynamic>{
      'textColor': instance.textColor,
    };
