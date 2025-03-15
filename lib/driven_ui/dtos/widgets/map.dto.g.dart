// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapSchemaDto _$MapSchemaDtoFromJson(Map<String, dynamic> json) => MapSchemaDto(
      json['type'] as String,
      json['key'] as String?,
      (json['markers'] as List<dynamic>)
          .map((e) => MarkerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['initialZoom'] as num).toDouble(),
      Location.fromJson(json['initLocatin'] as Map<String, dynamic>),
      (json['height'] as num?)?.toDouble(),
      (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MapSchemaDtoToJson(MapSchemaDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'initialZoom': instance.initialZoom,
      'initLocatin': instance.initLocatin,
      'width': instance.width,
      'height': instance.height,
      'markers': instance.markers,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      (json['lat'] as num).toDouble(),
      (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

MarkerDto _$MarkerDtoFromJson(Map<String, dynamic> json) => MarkerDto(
      Location.fromJson(json['location'] as Map<String, dynamic>),
      (json['width'] as num).toDouble(),
      (json['height'] as num).toDouble(),
      SchemaDto.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarkerDtoToJson(MarkerDto instance) => <String, dynamic>{
      'location': instance.location,
      'width': instance.width,
      'height': instance.height,
      'icon': instance.icon,
    };
